package pixi.loader;

import haxe.Constraints.Function;

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