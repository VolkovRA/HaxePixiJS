package pixi.filters;

import pixi.enums.BlendMode;
import pixi.enums.ClearMode;
import pixi.render.State;
import pixi.render.systems.FilterSystem;
import pixi.textures.RenderTexture;

/**
 * Filter is a special type of WebGL shader that is applied to the screen.
 * 
 * Usage
 * ---------
 * Filters can be applied to any DisplayObject or Container. PixiJS' FilterSystem
 * renders the container into temporary Framebuffer, then filter renders it to the
 * screen. Multiple filters can be added to the filters array property and stacked
 * on each other.
 * ```
 * var filter = new Filter(myShaderVert, myShaderFrag, { myUniform: 0.5 });
 * var container = new Container();
 * container.filters = [filter];
 * ```
 * 
 * Previous Version Differences
 * ---------
 * - In PixiJS **v3**, a filter was always applied to *whole screen*.
 * - In PixiJS **v4**, a filter can be applied *only part of the screen*. Developers
 *   had to create a set of uniforms to deal with coordinates.
 * - In PixiJS **v5** combines *both approaches*. Developers can use normal coordinates
 *   of v3 and then allow filter to use partial Framebuffers, bringing those extra
 *   uniforms into account.
 * 
 * Also be aware that we have changed default vertex shader, please consult Wiki:
 * https://github.com/pixijs/pixi.js/wiki/v5-Creating-filters
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Filter.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_filters_Filter.js.html
 * @see Example of the BlurFilter: http://pixijs.download/release/docs/PIXI.filters.BlurFilter.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Filter")
extern class Filter extends Shader
{
    /**
     * Create a new Filter instance.
     * @param vertexSrc The source of the vertex shader.
     * @param fragmentSrc The source of the fragment shader.
     * @param uniforms Custom uniforms to use to augment the built-in ones.
     */
    public function new(?vertexSrc:String, ?fragmentSrc:String, ?uniforms:Dynamic);

    /**
     * The default fragment shader source.
     */
    static public var defaultFragmentSrc(default, null):String;

    /**
     * The default vertex shader source.
     */
    static public var defaultVertexSrc(default, null):String;

    /**
     * If enabled, PixiJS will fit the filter area into boundaries for better performance.  
     * Switch it off if it does not work for specific shader.
     */
    public var autoFit:Bool;

    /**
     * Sets the blendmode of the filter.  
     * Default: `BlendMode.NORMAL`
     */
    public var blendMode:BlendMode;

    /**
     * If enabled is true the filter is applied, if false it will not.
     */
    public var enabled:Bool;

    /**
     * Legacy filters use position and uvs from attributes.
     */
    public var legacy(default, null):Bool;

    /**
     * The padding of the filter. Some filters require extra space to breath such as a blur.  
     * Increasing this will add extra width and height to the bounds of the object that the
     * filter is applied to.
     */
    public var padding:Float;

    /**
     * The resolution of the filter.  
     * Setting this to be lower will lower the quality but increase the performance of the filter.
     */
    public var resolution:Float;

    /**
     * The WebGL state the filter requires to render.
     */
    public var state:State;

    /**
     * Applies the filter.
     * @param filterManager The renderer to retrieve the filter from.
     * @param input The input render target.
     * @param output The target to output to.
     * @param clearMode Should the output be cleared before rendering to it.
     * @param currentState It's current state of filter. There are some useful properties in the
     *                     currentState : target, filters, sourceFrame, destinationFrame, renderTarget, resolution.
     */
    public function apply(filterManager:FilterSystem, input:RenderTexture, output:RenderTexture, clearMode:ClearMode, ?currentState:Dynamic):Void;
}