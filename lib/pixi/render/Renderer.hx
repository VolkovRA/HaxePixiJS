package pixi.render;

import js.html.webgl.RenderingContext;
import pixi.display.DisplayObject;
import pixi.geom.Matrix;
import pixi.textures.RenderTexture;

/**
 * The Renderer draws the scene and all its content onto a WebGL enabled canvas.  
 * This renderer should be used for browsers that support WebGL.  
 * This renderer works by automatically managing WebGLBatchesm, so no need for
 * Sprite Batches or Sprite Clouds. Don't forget to add the view to your DOM or
 * you will not see anything!
 * @event RenderEvent.CONTEXT Fired when the WebGL context is set.
 * @event RenderEvent.PRERENDER Fired before rendering starts.
 * @event RenderEvent.POSTRENDER Fired after rendering finishes.
 * @event RenderEvent.RESIZE Fired after view has been resized.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Renderer.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_Renderer.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Renderer")
extern class Renderer extends AbstractRenderer
{
    /**
     * Create a new Renderer instance.
     * @param options The optional renderer parameters.
     */
    public function new(?options:RendererOptions);

    /**
     * The last root object that the renderer tried to render.
     */
    override private var _lastObjectRendered:DisplayObject;

    /**
     * Batch system instance.
     */
    public var batch(default, null):BatchSystem;

    /**
     * Context system instance.
     */
    public var context(default, null):ContextSystem;

    /**
     * Collection of methods for extracting data (image, pixels, etc.) from a display object or render texture.
     */
    public var extract:Extract;

    /**
     * Filter system instance.
     */
    public var filter(default, null):FilterSystem;

    /**
     * Framebuffer system instance.
     */
    public var framebuffer(default, null):FramebufferSystem;

    /**
     * Geometry system instance.
     */
    public var geometry(default, null):GeometrySystem;

    /**
     * WebGL context, set by the contextSystem. (this.context)
     */
    public var gl(default, null):RenderingContext;

    /**
     * Global uniforms.
     */
    public var globalUniforms:UniformGroup;

    /**
     * Mask system instance.
     */
    public var mask(default, null):MaskSystem;

    /**
     * Projection system instance.
     */
    public var projection(default, null):ProjectionSystem;

    /**
     * Flag if we are rendering to the screen vs renderTexture.  
     * Default: `true`
     */
    public var renderingToScreen(default, null):Bool;

    /**
     * RenderTexture system instance.
     */
    public var renderTexture(default, null):RenderTextureSystem;

    /**
     * Scissor system instance.
     */
    public var scissor(default, null):ScissorSystem;

    /**
     * Shader system instance.
     */
    public var shader(default, null):ShaderSystem;

    /**
     * State system instance.
     */
    public var state(default, null):StateSystem;

    /**
     * Stencil system instance.
     */
    public var stencil(default, null):StencilSystem;

    /**
     * Texture system instance.
     */
    public var texture(default, null):TextureSystem;

    /**
     * Texture garbage collector system instance.
     */
    public var textureGC(default, null):TextureGCSystem;

    /**
     * Adds a plugin to the renderer.
     * @param pluginName The name of the plugin.
     * @param ctor The constructor function or class for the plugin.
     */
    static public function registerPlugin(pluginName:String, ctor:Dynamic):Void;

    /**
     * Add a new system to the renderer.
     * @param ClassRef Class reference.
     * @param name Property name for system, if not specified will use a static `name` property
     *             on the class itself. This name will be assigned as s property on the Renderer
     *             so make sure it doesn't collide with properties on Renderer.
     * @return Return instance of renderer.
     */
    public function addSystem(ClassRef:Dynamic, ?name:String):Renderer;

    /**
     * Clear the frame buffer.
     */
    public function clear():Void;

    /**
     * Removes everything from the renderer (event listeners, spritebatch, etc...)
     * @param removeView Removes the Canvas element from the DOM.
     *                   See: https://github.com/pixijs/pixi.js/issues/2233
     *                   Default: `false`
     */
    override public function destroy(?removeView:Bool):Void;

    /**
     * Renders the object to its WebGL view.
     * @param displayObject The object to be rendered.
     * @param renderTexture The render texture to render to.
     * @param clear Should the canvas be cleared before the new render. Default: `true`
     * @param transform A transform to apply to the render texture before rendering.
     * @param skipUpdateTransform Should we skip the update transform pass? Default: `false`
     */
    public function render(displayObject:DisplayObject, ?renderTexture:RenderTexture, ?clear:Bool, ?transform:Matrix, ?skipUpdateTransform:Bool):Void;

    /**
     * Resets the WebGL state so you can render things however you fancy!
     * @return Returns itself.
     */
    public function reset():Renderer;

    /**
     * Resizes the WebGL view to the specified width and height.
     * @param screenWidth The new width of the screen.
     * @param screenHeight The new height of the screen.
     */
    override public function resize(screenWidth:Int, screenHeight:Int):Void;
}

/**
 * The optional renderer parameters.
 * ***
 * Library: **core** 
 */
typedef RendererOptions = 
{
    >pixi.render.AbstractRenderer.AbstractRendererOptions,

    /**
     * Parameter passed to WebGL context, set to "high-performance" for devices with dual graphics card.
     */
    @:optional var powerPreference:String;

    /**
     * If WebGL context already exists, all parameters must be taken from it.
     */
    @:optional var context:Dynamic;
}