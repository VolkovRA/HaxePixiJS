package pixi.render.systems;

import pixi.display.DisplayObject;
import pixi.display.Sprite;
import pixi.filters.Filter;
import pixi.geom.Matrix;
import pixi.geom.Quad;
import pixi.geom.QuadUv;
import pixi.geom.Rectangle;
import pixi.textures.RenderTexture;

/**
 * System plugin to the renderer to manage the filters.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.FilterSystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_filters_FilterSystem.js.html
 */
@:native("PIXI.systems.FilterSystem")
extern class FilterSystem extends System
{
    /**
     * Create a new FilterSystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * Active state.
     */
    public var activeState:Dynamic;

    /**
     * List of filters for the FilterSystem.
     */
    public var defaultFilterStack(default, null):Array<Dynamic>;

    /**
     * Whether to clear output renderTexture in AUTO/BLIT mode.
     * 
     * See Pixi.CLEAR_MODES.
     */
    public var forceClear:Bool;

    /**
     * This uniform group is attached to filter uniforms when used.
     */
    public var globalUniforms:Dynamic;

    /**
     * A very simple geometry used when drawing a filter effect to the screen.
     */
    public var quad:Quad;

    /**
     * Quad UVs.
     */
    public var quadUv:QuadUv;
    
    /**
     * A pool for storing filter states, save us creating new ones each tick.
     */
    public var statePool:Array<Dynamic>;

    /**
     * Temporary rect for maths.
     */
    public var tempRect:Rectangle;

    /**
     * Stores a bunch of PO2 textures used for filtering.
     */
    public var texturePool:Dynamic;

    /**
     * Old padding behavior is to use the max amount instead of sum padding.
     * Use this flag if you need the old behavior.
     * 
     * Default: `false`
     */
    public var useMaxPadding:Bool;

    /**
     * Draws a filter.
     * @param filter The filter to draw.
     * @param input The input render target.
     * @param output The target to output to.
     * @param clearMode Should the output be cleared before rendering to it.
     */
    public function applyFilter(filter:Filter, input:RenderTexture, output:RenderTexture, ?clearMode:ClearMode):Void;

    /**
     * Binds a renderTexture with corresponding `filterFrame`, clears it if mode corresponds.
     * @param filterTexture RenderTexture to bind, should belong to filter pool or filter stack.
     * @param clearMode ClearMode, by default its CLEAR/YES. See `Pixi.CLEAR_MODES`.
     */
    public function bindAndClear(filterTexture:RenderTexture, ?clearMode:ClearMode):Void;

    /**
     * Multiply *input normalized coordinates* to this matrix to get *sprite texture normalized coordinates*.
     * 
     * Use `outputMatrix * vTextureCoord` in the shader.
     * 
     * @param outputMatrix The matrix to output to.
     * @param sprite The sprite to map to.
     * @return The mapped matrix.
     */
    public function calculateSpriteMatrix(outputMatrix:Matrix, sprite:Sprite):Matrix;

    /**
     * Empties the texture pool.
     */
    public function emptyPool():Void;

    /**
     * Gets extra render texture to use inside current filter To be compliant with
     * older filters, you can use params in any order.
     * @param input RenderTexture from which size and resolution will be copied.
     * @param resolution Override resolution of the renderTexture.
     */
    public function getFilterTexture(?input:RenderTexture, ?resolution:Float):RenderTexture;

    /**
     * Gets a Power-of-Two render texture or fullScreen texture.
     * @param minWidth The minimum width of the render texture in real pixels.
     * @param minHeight The minimum height of the render texture in real pixels.
     * @param resolution The resolution of the render texture. Default: `1`
     * @return The new render texture.
     */
    private function getOptimalFilterTexture(minWidth:Int, minHeight:Int, ?resolution:Float):RenderTexture;

    /**
     * Pops off the filter and applies it.
     */
    public function pop():Void;

    /**
     * Adds a new filter to the System.
     * @param target The target of the filter to render.
     * @param filters The filters to apply.
     */
    public function push(target:DisplayObject, filters:Array<Filter>):Void;

    /**
     * Calls `texturePool.resize()`, affects fullScreen renderTextures.
     */
    public function resize():Void;

    /**
     * Frees a render texture back into the pool.
     * @param renderTexture The renderTarget to free.
     */
    public function returnFilterTexture(renderTexture:RenderTexture):Void;
}