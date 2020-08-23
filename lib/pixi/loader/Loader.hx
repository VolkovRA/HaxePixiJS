package pixi.loader;

import haxe.Constraints.Function;

/**
 * The new loader, extends Resource Loader by Chad Engler: https://github.com/englercj/resource-loader
 * 
 * Example:
 * ```
 * var loader = Loader.shared; // PixiJS exposes a premade instance for you to use.
 * //or
 * var loader = new Loader(); // you can also create your own if you want
 * 
 * var sprites = {};
 * 
 * // Chainable `add` to enqueue a resource
 * loader.add('bunny', 'data/bunny.png')
 *     .add('spaceship', 'assets/spritesheet.json');
 * loader.add('scoreFont', 'assets/score.fnt');
 * 
 * // Chainable `pre` to add a middleware that runs for each resource, *before* loading that resource.
 * // This is useful to implement custom caching modules (using filesystem, indexeddb, memory, etc).
 * loader.pre(cachingMiddleware);
 * 
 * // Chainable `use` to add a middleware that runs for each resource, *after* loading that resource.
 * // This is useful to implement custom parsing modules (like spritesheet parsers, spine parser, etc).
 * loader.use(parsingMiddleware);
 * 
 * // The `load` method loads the queue of resources, and calls the passed in callback called once all
 * // resources have loaded.
 * loader.load((loader, resources) => {
 *     // resources is an object where the key is the name of the resource loaded and the value is the resource object.
 *     // They have a couple default properties:
 *     // - `url`: The URL that the resource was loaded from
 *     // - `error`: The error that happened when trying to load (if any)
 *     // - `data`: The raw data that was loaded
 *     // also may contain other properties based on the middleware that runs.
 *     sprites.bunny = new TilingSprite(resources.bunny.texture);
 *     sprites.spaceship = new TilingSprite(resources.spaceship.texture);
 *     sprites.scoreFont = new TilingSprite(resources.scoreFont.texture);
 * });
 * 
 * // throughout the process multiple signals can be dispatched.
 * loader.onProgress.add(() => {}); // called once per loaded/errored file
 * loader.onError.add(() => {}); // called once per errored file
 * loader.onLoad.add(() => {}); // called once per loaded file
 * loader.onComplete.add(() => {}); // called once when the queued resources all load.
 * ```
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Loader.html
 * @see Source code: http://pixijs.download/release/docs/packages_loaders_src_Loader.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Loader")
extern class Loader
{
    /**
     * Create a new Loader instance.
     * @param baseUrl The base url for all resources loaded by this loader. Default: `''`
     * @param concurrency The number of resources to load concurrently. Default: `10`
     */
    public function new(?baseUrl:String, ?concurrency:Int);

    /**
     * A premade instance of the loader that can be used to load resources.
     */
    static public var shared:Loader;

    /**
     * Dispatched when completely loaded all resources.  
     * ```
     * loader.onComplete.add(() => {}); // called once when the queued resources all load.
     * ```
     */
    public var onComplete:ILoaderDispatcher;

    /**
     * Dispatched once per errored resource.  
     * ```
     * loader.onError.add(() => {}); // called once per errored file
     * ```
     */
    public var onError:ILoaderDispatcher;

    /**
     * Dispatched once per loaded resource.  
     * ```
     * loader.onLoad.add(() => {}); // called once per loaded file
     * ```
     */
    public var onLoad:ILoaderDispatcher;

    /**
     * Dispatched once per loaded or errored resource.  
     * ```
     * loader.onProgress.add(() => {}); // called once per loaded/errored file
     * ```
     */
    public var onProgress:ILoaderDispatcher;

    /**
     * Dispatched when the loader begins to loading process.
     */
    public var onStart:ILoaderDispatcher;

    /**
     * Destroy the loader, removes references.
     */
    public function destroy():Void;

    /**
     * Adds a Loader plugin for the global shared loader and all new Loader instances created.
     * @param plugin The plugin to add.
     * @return Reference to PIXI.Loader for chaining.
     */
    static public function registerPlugin(plugin:ILoaderPlugin):Loader;
}

/**
 * Plugin to be installed for handling specific Loader resources.
 * @see http://pixijs.download/release/docs/PIXI.html#.ILoaderPlugin
 * ***
 * Library: **core** 
 */
typedef ILoaderPlugin =
{
    /**
     * Function to call immediate after registering plugin.
     */
    var add:Function;

    /**
     * Middleware function to run before load, the arguments for this are `(resource, next)`.
     */
    var pre:LoaderResource->Function->Void;

    /**
     * Middleware function to run after load, the arguments for this are `(resource, next)`.
     */
    var use:LoaderResource->Function->Void;
}

/**
 * The simple dispatcher of Loader signals.  
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Loader.html#.ILoaderSignal
 * ***
 * Library: **core** 
 */
@:native("PIXI.Loader.ILoaderSignal")
extern interface ILoaderDispatcher
{
    /**
     * Register callback.
     * @param callback The callback function.
     * @return The id of registered callback for `ILoaderSignal.detach()` method.
     */
    public function add(callback:Function):CallbackID;

    /**
     * Register oneshot callback.
     * @param callback The callback function.
     * @return The id of registered callback for `ILoaderSignal.detach()` method.
     */
    public function once(callback:Function):CallbackID;

    /**
     * Detach specific callback by ID.
     * @param callback The callback function.
     */
    public function detach(callback:Function):Void;
}

/**
 * The CallbackID returned by `ILoaderSignal.add()` or `ILoaderSignal.once()` methods.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Loader.html#.ICallbackID
 * ***
 * Library: **core** 
 */
typedef CallbackID = Dynamic;