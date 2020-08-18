package pixi.render;

import haxe.extern.EitherType;
import js.lib.Uint8Array;
import js.html.ImageElement;
import js.html.CanvasElement;
import js.html.webgl.RenderingContext;
import pixi.display.DisplayObject;
import pixi.geom.Matrix;
import pixi.textures.RenderTexture;
import pixi.render.systems.BatchSystem;
import pixi.render.systems.ContextSystem;
import pixi.render.systems.FilterSystem;
import pixi.render.systems.FramebufferSystem;
import pixi.render.systems.GeometrySystem;
import pixi.render.systems.MaskSystem;
import pixi.render.systems.ProjectionSystem;
import pixi.render.systems.RenderTextureSystem;
import pixi.render.systems.ScissorSystem;
import pixi.render.systems.ShaderSystem;
import pixi.render.systems.StateSystem;
import pixi.render.systems.StencilSystem;
import pixi.render.systems.TextureGCSystem;
import pixi.render.systems.TextureSystem;

/**
 * The Renderer draws the scene and all its content onto a WebGL enabled canvas.  
 * This renderer should be used for browsers that support WebGL.  
 * This renderer works by automatically managing WebGLBatchesm, so no need for
 * Sprite Batches or Sprite Clouds. Don't forget to add the view to your DOM or
 * you will not see anything!
 * 
 * @event `PixiEvent.CONTEXT` Fired when the WebGL context is set.
 * @event `PixiEvent.PRERENDER` Fired before rendering starts.
 * @event `PixiEvent.POSTRENDER` Fired after rendering finishes.
 * @event `PixiEvent.RESIZE` Fired after view has been resized.
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

/**
 * This class provides renderer-specific plugins for exporting content from a renderer.
 * For instance, these plugins can be used for saving an Image, Canvas element or for
 * exporting the raw image data (pixels).
 * 
 * Do not instantiate these plugins directly. It is available from the `renderer.plugins`
 * property. See PIXI.CanvasRenderer#plugins or PIXI.Renderer#plugins.
 * 
 * Example:
 * ```
 * // Create a new app (will auto-add extract plugin to renderer)
 * var app = new Application();
 * 
 * // Draw a red circle
 * var graphics = new Graphics()
 *     .beginFill(0xFF0000)
 *     .drawCircle(0, 0, 50);
 * 
 * // Render the graphics as an HTMLImageElement
 * var image = app.renderer.plugins.extract.image(graphics);
 * document.body.appendChild(image);
 * ```
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Extract.html
 * @see Source code: http://pixijs.download/release/docs/packages_extract_src_Extract.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Extract")
extern class Extract
{
    /**
     * Create a new Extract instance.
     * @param options A reference to the current renderer.
     */
    public function new(renderer:Renderer);

    /**
     * Will return a a base64 encoded string of this target. It works by
     * calling `Extract.getCanvas` and then running toDataURL on that.
     * @param target A displayObject or renderTexture to convert. If left empty will use the main renderer.
     * @param format Image format, e.g. "image/jpeg" or "image/webp".
     * @param quality JPEG or Webp compression from 0 to 1. Default: `0.92`
     * @return A base64 encoded string of the texture.
     */
    public function base64(target:EitherType<DisplayObject,RenderTexture>, ?format:String, ?quality:Float):String;

    /**
     * Creates a Canvas element, renders this target to it and then returns it.
     * @param target A displayObject or renderTexture to convert. If left empty will use the main renderer.
     * @return Canvas element with the texture rendered on.
     */
    public function canvas(target:EitherType<DisplayObject,RenderTexture>):CanvasElement;

    /**
     * Destroys the extract.
     */
    public function destroy():Void;

    /**
     * Will return a HTML Image of the target.
     * @param target A displayObject or renderTexture to convert. If left empty will use the main renderer.
     * @param format Image format, e.g. "image/jpeg" or "image/webp".
     * @param quality JPEG or Webp compression from 0 to 1. Default: `0.92`
     * @return HTML Image of the target.
     */
    public function image(target:EitherType<DisplayObject,RenderTexture>, ?format:String, ?quality:Float):ImageElement;

    /**
     * Will return a one-dimensional array containing the pixel data of the entire
     * texture in RGBA order, with integer values between 0 and 255 (included).
     * @param target A displayObject or renderTexture to convert. If left empty will use the main renderer.
     * @return One-dimensional array containing the pixel data of the entire texture.
     */
    public function pixels(target:EitherType<DisplayObject,RenderTexture>):Uint8Array;
}

/**
 * Uniform group holds uniform map and some ID's for work.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.UniformGroup.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_shader_UniformGroup.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.UniformGroup")
extern class UniformGroup
{
    /**
     * Create a new UniformGroup instance.
     * @param uniforms Custom uniforms to use to augment the built-in ones.
     * @param _static Uniforms wont be changed after creation.
     */
    public function new(?uniforms:Dynamic, _static:Bool);

    /**
     * Dirty version.
     */
    private var dirtyId:Int;

    /**
     * Its a group and not a single uniforms.  
     * Default: `true`
     */
    public var group(default, null):Bool;

    /**
     * Unique id.
     */
    private var id:Int;

    /**
     * Uniforms wont be changed after creation.
     */
    @:native('static')
    var staticUniform:Bool;

    /**
     * Uniform values.
     */
    public var uniforms(default, null):Dynamic;
}