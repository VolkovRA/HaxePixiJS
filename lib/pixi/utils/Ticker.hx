package pixi.utils;

import haxe.Constraints.Function;

/**
 * A Ticker class that runs an update loop that other objects listen to.
 * 
 * This class is composed around listeners meant for execution on the next
 * requested animation frame. Animation frames are requested only when
 * necessary, e.g. When the ticker is started and the emitter has listeners.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Ticker_.html
 * @see Source code: http://pixijs.download/release/docs/packages_ticker_src_Ticker.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Ticker")
extern class Ticker
{
    /**
     * Create a new Ticker instance.
     */
    public function new();

    /**
     * The shared ticker instance used by `AnimatedSprite` and by
     * `VideoResource` to update animation frames / video textures.
     * 
     * It may also be used by `Application` if created with the
     * `sharedTicker` option property set to true.
     * 
     * The property `Ticker.autoStart` is set to `true` for this
     * instance. Please follow the examples for usage, including how
     * to opt-out of auto-starting the shared ticker.
     * 
     * Example:
     * ```
     * var ticker = Ticker.shared;
     * // Set this to prevent starting this ticker when listeners are added.
     * // By default this is true only for the Ticker.shared instance.
     * ticker.autoStart = false;
     * // FYI, call this to ensure the ticker is stopped. It should be stopped
     * // if you have not attempted to render anything yet.
     * ticker.stop();
     * // Call this when you are ready for a running shared ticker.
     * ticker.start();
     * ```
     * and:
     * ```
     * // You may use the shared ticker to render...
     * var renderer = autoDetectRenderer();
     * var stage = new Container();
     * document.body.appendChild(renderer.view);
     * ticker.add(function (time) {
     *     renderer.render(stage);
     * });
     * ```
     * and:
     * ```
     * // Or you can just update it manually.
     * ticker.autoStart = false;
     * ticker.stop();
     * function animate(time) {
     *     ticker.update(time);
     *     renderer.render(stage);
     *     requestAnimationFrame(animate);
     * }
     * animate(performance.now());
     * ```
     */
    static public var shared:Ticker;
    
    /**
     * The system ticker instance used by `InteractionManager` and
     * by `BasePrepare` for core timing functionality that shouldn't
     * usually need to be paused, unlike the `shared` ticker which drives
     * visual animations and rendering which may want to be paused.
     * 
     * The property `Ticker#autoStart` is set to `true` for this instance.
     */
    static public var system:Ticker;

    /**
     * Whether or not this ticker should invoke the method `Ticker.start`
     * automatically when a listener is added.
     * 
     * Default: `false`
     */
    public var autoStart:Bool;

    /**
     * The number of listeners on this ticker, calculated by walking through linked list.
     */
    public var count(default, null):Int;

    /**
     * Scaler time elapsed in milliseconds from last frame to this frame.
     * This value is capped by setting `Ticker.minFPS` and is scaled with
     * `Ticker.speed`. **Note:** The cap may be exceeded by scaling. If the
     * platform supports DOMHighResTimeStamp, this value will have a precision of 1
     * µs. Defaults to target frame time.
     * 
     * Default: `16.66`
     */
    public var deltaMS:Float;

    /**
     * Scalar time value from last frame to this frame. This value is capped by
     * setting `Ticker.minFPS` and is scaled with `Ticker.speed`. Note: The cap
     * may be exceeded by scaling.
     * 
     * Default: `1`
     */
    public var deltaTime:Float;

    /**
     * Time elapsed in milliseconds from last frame to this frame. Opposed to
     * what the scalar `Ticker.deltaTime` is based, this value is neither
     * capped nor scaled. If the platform supports DOMHighResTimeStamp, this
     * value will have a precision of 1 µs. Defaults to target frame time.
     * 
     * Default: `16.66`
     */
    public var elapsedMS:Float;

    /**
     * The frames per second at which this ticker is running. The default is
     * approximately 60 in most modern browsers. **Note:** This does not factor
     * in the value of `Ticker.speed`, which is specific to scaling `Ticker.deltaTime`.
     */
    public var FPS(default, null):Float;

    /**
     * The last time `Ticker.update` was invoked. This value is also reset
     * internally outside of invoking update, but only when a new animation
     * frame is requested. If the platform supports DOMHighResTimeStamp,
     * this value will have a precision of 1 µs.
     *  
     * Default: `-1`
     */
    public var lastTime:Float;

    /**
     * Manages the minimum amount of milliseconds required to elapse between
     * invoking `Ticker.update`. This will effect the measured value of
     * `Ticker.FPS`. If it is set to `0`, then there is no limit; PixiJS will
     * render as many frames as it can. Otherwise it will be at least `minFPS`.
     * 
     * Default: `0`
     */
    public var maxFPS:Float;

    /**
     * Manages the maximum amount of milliseconds allowed to elapse between
     * invoking `Ticker.update`. This value is used to cap `Ticker.deltaTime`,
     * but does not effect the measured value of `Ticker.FPS`. When setting
     * this property it is clamped to a value between `0` and `Settings.TARGET_FPMS * 1000`.
     * 
     * Default: `10`
     */
    public var minFPS:Float;

    /**
     * Factor of current `Ticker.deltaTime`. 
     * 
     * Example:
     * ```
     * // Scales ticker.deltaTime to what would be
     * // the equivalent of approximately 120 FPS
     * ticker.speed = 2;
     * ```
     *  
     * Default: `1`
     */
    public var speed:Float;

    /**
     * Whether or not this ticker has been started. `true` if `Ticker.start`
     * has been called. `false` if `Ticker.stop` has been called. While `false`,
     * this value may change to true in the event of `Ticker.autoStart` being
     * `true` and a listener is added.
     * 
     * Default: `false`
     */
    public var started:Bool;

    /**
     * Register a handler for tick events. Calls continuously unless it is
     * removed or the ticker is stopped.
     * @param fn The listener function to be added for updates.
     * @param context The listener context.
     * @param priority The priority for emitting. Default: `UpdatePriority.NORMAL`
     * @return This instance of a ticker.
     */
    public function add(fn:Function, ?context:Dynamic, ?priority:Float):Ticker;

    /**
     * Add a handler for the tick event which is only execute once.
     * @param fn The listener function to be added for one update.
     * @param context The listener context.
     * @param priority The priority for emitting. Default: `UpdatePriority.NORMAL`
     * @return This instance of a ticker.
     */
    public function addOnce(fn:Function, ?context:Dynamic, ?priority:Float):Ticker;

    /**
     * Destroy the ticker and don't use after this.
     * Calling this method removes all references to internal events.
     */
    public function destroy():Void;

    /**
     * Removes any handlers matching the function and context parameters.
     * If no handlers are left after removing, then it cancels the animation frame.
     * @param fn The listener function to be removed.
     * @param context The listener context to be removed.
     * @return This instance of a ticker.
     */
    public function remove(fn:Function, ?context:Dynamic):Ticker;

    /**
     * Starts the ticker.
     * If the ticker has listeners a new animation frame is requested at this point.
     */
    public function start():Void;

    /**
     * Stops the ticker.
     * If the ticker has requested an animation frame it is canceled at this point.
     */
    public function stop():Void;

    /**
     * Triggers an update. An update entails setting the current `Ticker.elapsedMS`,
     * the current `Ticker.deltaTime`, invoking all listeners with current deltaTime,
     * and then finally setting `Ticker.lastTime` with the value of currentTime that
     * was provided. This method will be called automatically by animation frame
     * callbacks if the ticker instance has been started and listeners are added.
     * @param currentTime The current time of execution. Default: `performance.now()`
     */
    public function update(?currentTime:Float):Void;
}

/**
 * Middleware for for Application Ticker.
 * 
 * Example: (TypeScript)
 * ```
 * import {TickerPlugin} from '@pixi/ticker';
 * import {Application} from '@pixi/app';
 * Application.registerPlugin(TickerPlugin);
 * ```
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.TickerPlugin.html
 * @see Source code: http://pixijs.download/release/docs/packages_ticker_src_TickerPlugin.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.TickerPlugin")
extern class TickerPlugin
{
    /**
     * Create a new TickerPlugin instance.
     */
    public function new();
}