package pixi.render;

import js.html.CanvasElement;
import pixi.display.DisplayObject;
import pixi.display.ScaleMode;
import pixi.events.EventEmitter;
import pixi.geom.Rectangle;
import pixi.textures.RenderTexture;

/**
 * The AbstractRenderer is the base for a PixiJS Renderer.
 * 
 * It is extended by the `CanvasRenderer` and `Renderer` which can be
 * used for rendering a PixiJS scene.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.AbstractRenderer.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_AbstractRenderer.js.html
 */
@:native("PIXI.AbstractRenderer")
extern class AbstractRenderer extends EventEmitter
{
    /**
     * Create a new AbstractRenderer instance.
     * @param system The name of the system this renderer is for.
     * @param options The optional renderer parameters.
     */
    public function new(system:String, ?options:AbstractRendererOptions);

    /**
     * The background color as a number.
     */
    private var _backgroundColor:Int;

    /**
     * The background color as an [R, G, B] array.
     */
    private var _backgroundColorRgba:Array<Int>;

    /**
     * The background color as a string.
     */
    private var _backgroundColorString:String;

    /**
     * The last root object that the renderer tried to render.
     */
    private var _lastObjectRendered:DisplayObject;

    /**
     * Whether CSS dimensions of canvas view should be resized to screen dimensions automatically.
     */
    public var autoDensity:Bool;

    /**
     * The background color to fill if not transparent.
     */
    public var backgroundColor:Int;

    /**
     * This sets if the CanvasRenderer will clear the canvas or not before the new render pass.
     * 
     * If the scene is NOT transparent PixiJS will use a canvas sized fillRect operation every
     * frame to set the canvas background color. If the scene is transparent PixiJS will use
     * clearRect to clear the canvas every frame. Disable this by setting this to false. For
     * example, if your game has a canvas filling background image you often don't need this set.
     */
    public var clearBeforeRender:Bool;

    /**
     * Same as view.width, actual number of pixels in the canvas by horizontal.
     * 
     * Default: `800`
     */
    public var width(default, null):Int;

    /**
     * Same as view.height, actual number of pixels in the canvas by vertical.
     * 
     * Default: `600`
     */
    public var height(default, null):Int;

    /**
     * The supplied constructor options.
     */
    public var options(default, null):AbstractRendererOptions;

    /**
     * Collection of plugins.
     */
    public var plugins(default, null):Dynamic;

    /**
     * The value of the preserveDrawingBuffer flag affects whether or not
     * the contents of the stencil buffer is retained after rendering.
     */
    public var preserveDrawingBuffer:Bool;

    /**
     * The resolution / device pixel ratio of the renderer.
     * 
     * Default: `1`
     */
    public var resolution:Float;

    /**
     * Measurements of the screen. (0, 0, screenWidth, screenHeight).
     * 
     * Its safe to use as filterArea or hitArea for the whole stage.
     */
    public var screen:Rectangle;

    /**
     * Whether the render view is transparent.
     */
    public var transparent:Bool;

    /**
     * The type of the renderer.
     * 
     * Default: `RendererType.UNKNOWN`
     */
    public var type:RendererType;

    /**
     * The canvas element that everything is drawn to.
     */
    public var view:CanvasElement;

    /**
     * Removes everything from the renderer and optionally removes the Canvas DOM element.
     * @param removeView Removes the Canvas element from the DOM. Default: `false`
     */
    public function destroy(?removeView:Bool):Void;

    /**
     * Useful function that returns a texture of the display object that can then be used
     * to create sprites This can be quite useful if your displayObject is complicated and
     * needs to be reused multiple times.
     * @param displayObject The displayObject the object will be generated from.
     * @param scaleMode The scale mode of the texture.
     * @param resolution The resolution / device pixel ratio of the texture being generated.
     * @param region The region of the displayObject, that shall be rendered, if no region
     *               is specified, defaults to the local bounds of the displayObject.
     * @return A texture of the graphics object.
     */
    public function generateTexture(displayObject:DisplayObject, scaleMode:ScaleMode, resolution:Float, ?region:Rectangle):RenderTexture;

    /**
     * Initialize the plugins.
     * @param staticMap The dictionary of statically saved plugins.
     */
    private function initPlugins(staticMap:Dynamic):Void;

    /**
     * Resizes the screen and canvas to the specified width and height.
     * Canvas dimensions are multiplied by resolution.
     * @param screenWidth The new width of the screen.
     * @param screenHeight The new height of the screen.
     */
    public function resize(screenWidth:Int, screenHeight:Int):Void;
}

/**
 * The optional renderer parameters.
 */
typedef AbstractRendererOptions =
{
    /**
     * The width of the screen.
     * 
     * Default: `800`
     */
    @:optional var width:Int;

    /**
     * The height of the screen.
     * 
     * Default: `600`
     */
    @:optional var height:Int;

    /**
     * The canvas to use as a view, optional.
     */
    @:optional var view:CanvasElement;

    /**
     * If the render view is transparent.
     * 
     * Default: `false`
     */
    @:optional var transparent:Bool;

    /**
     * Resizes renderer view in CSS pixels to allow for resolutions other than 1.
     * 
     * Default: `false`
     */
    @:optional var autoDensity:Bool;

    /**
     * Sets antialias.
     * 
     * Default: `false`
     */
    @:optional var antialias:Bool;

    /**
     * The resolution / device pixel ratio of the renderer. The resolution of the renderer retina would be 2.
     * 
     * Default: `1`
     */
    @:optional var resolution:Float;

    /**
     * Enables drawing buffer preservation, enable this if you need to call toDataUrl on the WebGL context.
     * 
     * Default: `false`
     */
    @:optional var preserveDrawingBuffer:Bool;

    /**
     * This sets if the renderer will clear the canvas or not before the new render pass.
     * 
     * Default: `true`
     */
    @:optional var clearBeforeRender:Bool;

    /**
     * The background color of the rendered area (shown if not transparent).
     * 
     * Default: `0x000000`
     */
    @:optional var backgroundColor:Int;
}