package pixi;

import haxe.Constraints.Function;
import haxe.extern.EitherType;
import js.html.CanvasElement;
import js.html.Element;
import js.html.Window;
import pixi.display.Container;
import pixi.loader.Loader;
import pixi.render.CanvasRenderer;
import pixi.render.Renderer;
import pixi.geom.Rectangle;
import pixi.utils.Ticker;

/**
 * Convenience class to create a new PIXI application.  
 * This class automatically creates the renderer, ticker and root container.
 * 
 * Example:
 * ```
 * // Create the application
 * var app = new Application();
 * 
 * // Add the view to the DOM
 * document.body.appendChild(app.view);
 * 
 * // ex, add display objects
 * app.stage.addChild(Sprite.from('something.png'));
 * ```
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Application.html
 * @see Source code: http://pixijs.download/release/docs/packages_app_src_Application.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Application")
extern class Application
{
    /**
     * Create a new PixiJS application.
     * @param options The optional renderer parameters.
     */
    public function new(?options:ApplicationOptions);

    /**
     * Loader instance to help with asset loading.
     */
    public var loader(default, null):Loader;

    /**
     * WebGL renderer if available, otherwise CanvasRenderer.
     */
    public var renderer:EitherType<Renderer, CanvasRenderer>;

    /**
     * The HTML element or window to automatically resize the renderer's view
     * element to match width and height.
     */
    public var resizeTo:EitherType<Window, Element>;

    /**
     * Reference to the renderer's screen rectangle.
     * Its safe to use as filterArea or hitArea for the whole screen.
     */
    public var screen(default, null):Rectangle;

    /**
     * The root display container that's rendered.
     */
    public var stage:Container;

    /**
     * Ticker for doing render updates.  
     * Default: `Ticker.shared`
     */
    public var ticker:Ticker;

    /**
     * Reference to the renderer's canvas element.
     */
    public var view(default, null):CanvasElement;

    /**
     * Register a middleware plugin for the application.
     * @param plugin Plugin being installed.
     */
    static public function registerPlugin(plugin:Plugin):Void;

    /**
     * Resize is throttled, so it's safe to call this multiple
     * times per frame and it'll only be called once.
     */
    public function queueResize():Void;

    /**
     * Render the current stage.
     */
    public function render():Void;

    /**
     * Execute an immediate resize on the renderer, this is not throttled and
     * can be expensive to call many times in a row. Will resize only if
     * `resizeTo` property is set.
     */
    public function resize():Void;

    /**
     * Convenience method for starting the render.
     */
    public function start():Void;

    /**
     * Convenience method for stopping the render.
     */
    public function stop():Void;

    /**
     * Destroy and don't use after this.
     * @param removeView Automatically remove canvas from DOM. Default: `false`
     * @param stageOptions Options parameter. A boolean will act as if all options have been set to that value.
     */
    public function destroy(?removeView:Bool, ?stageOptions:EitherType<DestroyOptions, Bool>):Void;
}

/**
 * The options object for new Application instance.
 */
typedef ApplicationOptions =
{
    /**
     * Automatically starts the rendering after the construction.
     * **Note:** Setting this parameter to false does NOT stop the
     * shared ticker even if you set options.sharedTicker to true
     * in case that it is already started. Stop it by your own.
     */
    @:optional var autoStart:Bool;

    /**
     * The width of the renderers view.  
     * Default: `800`
     */
    @:optional var width:Int;

    /**
     * The height of the renderers view.  
     * Default: `600`
     */
    @:optional var height:Int;

    /**
     * The canvas to use as a view, optional.
     */
    @:optional var view:CanvasElement;

    /**
     * If the render view is transparent.  
     * Default: `false`
     */
    @:optional var transparent:Bool;

    /**
     * Resizes renderer view in CSS pixels to allow for resolutions
     * other than 1.  
     * Default: `false`
     */
    @:optional var autoDensity:Bool;

    /**
     * Sets antialias.  
     * Default: `false`
     */
    @:optional var antialias:Bool;

    /**
     * Enables drawing buffer preservation, enable this if you need
     * to call toDataUrl on the WebGL context.  
     * Default: `false`
     */
    @:optional var preserveDrawingBuffer:Bool;

    /**
     * The resolution / device pixel ratio of the renderer, retina would be 2.  
     * Default: `1`
     */
    @:optional var resolution:Float;

    /**
     * Prevents selection of WebGL renderer, even if such is present,
     * this option only is available when using **pixi.js-legacy** or
     * **@pixi/canvas-renderer** modules, otherwise it is ignored.  
     * Default: `false`
     */
    @:optional var forceCanvas:Bool;

    /**
     * The background color of the rendered area (shown if not transparent).  
     * Default: `0x000000`
     */
    @:optional var backgroundColor:Int;

    /**
     * This sets if the renderer will clear the canvas or not before
     * the new render pass.  
     * Default: `true`
     */
    @:optional var clearBeforeRender:Bool;

    /**
     * Parameter passed to webgl context, set to "high-performance"
     * for devices with dual graphics card. **(WebGL only)**.
     */
    @:optional var powerPreference:String;

    /**
     * `true` to use PIXI.Ticker.shared, `false` to create new ticker.
     * If set to false, you cannot register a handler to occur before
     * anything that runs on the shared ticker. The system ticker will
     * always run before both the shared ticker and the app ticker.  
     * Default: `false`
     */
    @:optional var sharedTicker:Bool;

    /**
     * `true` to use PIXI.Loader.shared, `false` to create new Loader.  
     * Default: `false`
     */
    @:optional var sharedLoader:Bool;

    /**
     * Element to automatically resize stage to.
     */
    @:optional var resizeTo:EitherType<Window,Element>;
}

/**
 * The application plugin.
 */
typedef Plugin =
{
    /**
     * Called when Application is constructed, scoped to Application
     * instance. Passes in options as the only argument, which are
     * Application constructor `options`.
     */
    var init:Function;

    /**
     * Called when destroying Application, scoped to Application instance.
     */
    var destroy:Function;
}