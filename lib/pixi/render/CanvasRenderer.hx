package pixi.render;

import js.html.CanvasRenderingContext2D;
import pixi.display.DisplayObject;
import pixi.enums.BlendMode;
import pixi.geom.Matrix;
import pixi.textures.RenderTexture;

/**
 * The CanvasRenderer draws the scene and all its content onto a 2d canvas.  
 * This renderer should be used for browsers that do not support WebGL.  
 * Don't forget to add the CanvasRenderer.view to your DOM or you will not see anything!
 * @event RenderEvent.PRERENDER Fired before rendering starts.
 * @event RenderEvent.POSTRENDER Fired after rendering finishes.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.CanvasRenderer.html
 * @see Source code: http://pixijs.download/release/docs/packages_canvas_canvas-renderer_src_CanvasRenderer.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.CanvasRenderer")
extern class CanvasRenderer extends AbstractRenderer
{
    /**
     * Create a new CanvasRenderer instance.
     * @param options The optional renderer parameters.
     */
    public function new(?options:AbstractRendererOptions);

    /**
     * The last root object that the renderer tried to render.
     */
    override private var _lastObjectRendered:DisplayObject;

    /**
     * Tracks the blend modes useful for this renderer.
     */
    public var blendModes:Dynamic;

    /**
     * The currently active canvas 2d context. (Could change with renderTextures)
     */
    public var context:CanvasRenderingContext2D;

    /**
     * Instance of a CanvasMaskManager, handles masking when using the canvas renderer.
     */
    public var maskManager:CanvasMaskManager;

    /**
     * Collection of installed plugins.
     * 
     * These are included by default in PIXI, but can be excluded by creating a custom build.
     * Consult the README for more information about creating custom builds and excluding plugins.
     * 
     * Properties:
     * ```
     * accessibility	PIXI.AccessibilityManager	Support tabbing interactive elements.
     * extract          PIXI.CanvasExtract	        Extract image data from renderer.
     * interaction	    PIXI.InteractionManager     Handles mouse, touch and pointer events.
     * prepare	        PIXI.CanvasPrepare	        Pre-render display objects.
     * ```
     */
    override public var plugins(default, null):Dynamic;

    /**
     * Boolean flag controlling canvas refresh.
     */
    public var refresh:Bool;

    /**
     * The resolution / device pixel ratio of the renderer.  
     * Default: `1`
     */
    override public var resolution:Float;

    /**
     * The root canvas 2d context that everything is drawn with.
     */
    public var rootContext:CanvasRenderingContext2D;

    /**
     * The canvas property used to set the canvas smoothing property.
     */
    public var smoothProperty:String;

    /**
     * Adds a plugin to the renderer.
     * @param pluginName The name of the plugin.
     * @param ctor The constructor function or class for the plugin.
     */
    static public function registerPlugin(pluginName:String, ctor:Dynamic):Void;

    /**
     * Clear the canvas of renderer.
     * @param clearColor Clear the canvas with this color, except the canvas is transparent. 
     */
    public function clear(?clearColor:String):Void;

    /**
     * Removes everything from the renderer and optionally removes the Canvas DOM element.
     * @param removeView Removes the Canvas element from the DOM. Default: `false`
     */
    override public function destroy(?removeView:Bool):Void;

    /**
     * Checks if blend mode has changed.
     */
    public function invalidateBlendMode():Void;

    /**
     * Renders the object to its WebGL view.
     * @param displayObject The object to be rendered.
     * @param renderTexture A render texture to be rendered to. If unset, it will render to the root context.
     * @param clear Whether to clear the canvas before drawing. Default: `this.clearBeforeRender`
     * @param transform A transformation to be applied.
     * @param skipUpdateTransform Whether to skip the update transform. Default: `false`
     */
    public function render(displayObject:DisplayObject, ?renderTexture:RenderTexture, ?clear:Bool, ?transform:Matrix, ?skipUpdateTransform:Bool):Void;

    /**
     * Resizes the canvas view to the specified width and height.
     * @param screenWidth The new width of the screen.
     * @param screenHeight The new height of the screen.
     */
    override public function resize(screenWidth:Int, screenHeight:Int):Void;

    /**
     * Sets the blend mode of the renderer.
     * @param blendMode Blend mode type.
     * @param readyForOuterBlend Some blendModes are dangerous, they affect outer space of sprite.
     *                           Pass true only if you are ready to use them.
     */
    public function setBlendMode(blendMode:BlendMode, ?readyForOuterBlend:Bool):Void;

    /**
     * Sets matrix of context called only from render() methods takes care about resolution.
     * @param transform World matrix of current element.
     * @param roundPixels Whether to round (tx,ty) coords.
     * @param localResolution If specified, used instead of renderer.resolution for local scaling.
     */
    public function setContextTransform(transform:Matrix, ?roundPixels:Bool, ?localResolution:Float):Void;
}