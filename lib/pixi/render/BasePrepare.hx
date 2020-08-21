package pixi.render;

import haxe.Constraints.Function;
import haxe.extern.EitherType;

/**
 * The prepare manager provides functionality to upload
 * content to the GPU.
 * 
 * BasePrepare handles basic queuing functionality and
 * is extended by [Prepare](http://pixijs.download/release/docs/PIXI.Prepare_.html)
 * and [CanvasPrepare](http://pixijs.download/release/docs/PIXI.CanvasPrepare.html)
 * to provide preparation capabilities specific to their
 * respective renderers.
 * 
 * Example:
 * ```
 * // Create a sprite
 * var sprite = Sprite.from('something.png');
 * 
 * // Load object into GPU
 * app.renderer.plugins.prepare.upload(sprite, () => {
 *     //Texture(s) has been uploaded to GPU
 *     app.stage.addChild(sprite);
 * 
 * })
 * ```
 * @see Documentation: http://pixijs.download/release/docs/PIXI.BasePrepare.html
 * @see Source code: http://pixijs.download/release/docs/packages_prepare_src_BasePrepare.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.BasePrepare")
extern class BasePrepare<T:BasePrepare<T>>
{
    /**
     * Create a new BasePrepare instance.
     * @param renderer A reference to the current renderer.
     */
    public function new(renderer:AbstractRenderer);

    /**
     * The limiter to be used to control how quickly items are prepared.
     */
    public var limiter:EitherType<CountLimiter, TimeLimiter>;

    /**
     * Reference to the renderer.
     */
    private var renderer:AbstractRenderer;

    /**
     * The only real difference between CanvasPrepare and Prepare is what
     * they pass to upload hooks. That different parameter is stored here.
     */
    private var uploadHookHelper:Dynamic;

    /**
     * Manually add an item to the uploading queue.
     * @param item Object to add to the queue.
     * @return Instance of plugin for chaining.
     */
    public function add(item:Dynamic):T;

    /**
     * Destroys the plugin, don't use after this.
     */
    public function destroy():Void;

    /**
     * Adds hooks for finding items.
     * @param addHook Function call that takes two parameters: `item:*, queue:Array`
     *                function must return `true` if it was able to add item to the queue.
     * @return Instance of plugin for chaining.
     */
    public function registerFindHook(addHook:Function):T;

    /**
     * Adds hooks for uploading items.
     * @param uploadHook Function call that takes two parameters: `prepare:CanvasPrepare, item:*`
     *                   and function must return `true` if it was able to handle upload of item.
     * @return Instance of plugin for chaining.
     */
    public function registerUploadHook(uploadHook:Function):T;

    /**
     * Upload all the textures and graphics to the GPU.
     * @param item Either the container or display object to search for items to upload,
     *             the items to upload themselves, or the callback function, if items have
     *             been added using `prepare.add`.
     * @param done Optional callback when all queued uploads have completed.
     */
    public function upload(item:Dynamic, ?done:Function):Void;
}

/**
 * TimeLimiter limits the number of items handled by a
 * [BasePrepare](http://pixijs.download/release/docs/PIXI.BasePrepare.html)
 * to a specified number of milliseconds per frame.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.TimeLimiter.html
 * @see Source code: http://pixijs.download/release/docs/packages_prepare_src_TimeLimiter.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.TimeLimiter")
extern class TimeLimiter 
{
    /**
     * Create a new TimeLimiter instance.
     * @param maxMilliseconds The maximum milliseconds that can be spent preparing items each frame.
     */
    public function new(maxMilliseconds:Int);

    /**
     * Checks to see if another item can be uploaded.
     * This should only be called once per item.
     * @return If the item is allowed to be uploaded.
     */
    public function allowedToUpload():Bool;

    /**
     * Resets any counting properties to start fresh on a new frame.
     */
    public function beginFrame():Void;
}


/**
 * CountLimiter limits the number of items handled by a
 * [BasePrepare](http://pixijs.download/release/docs/PIXI.BasePrepare.html)
 * to a specified number of items per frame.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.CountLimiter.html
 * @see Source code: http://pixijs.download/release/docs/packages_prepare_src_CountLimiter.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.CountLimiter")
extern class CountLimiter 
{
    /**
     * Create a new CountLimiter instance.
     * @param maxItemsPerFrame The maximum number of items that can be prepared each frame.
     */
    public function new(maxItemsPerFrame:Int);

    /**
     * Checks to see if another item can be uploaded.
     * This should only be called once per item.
     * @return If the item is allowed to be uploaded.
     */
    public function allowedToUpload():Bool;

    /**
     * Resets any counting properties to start fresh on a new frame.
     */
    public function beginFrame():Void;
}