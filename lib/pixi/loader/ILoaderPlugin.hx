package pixi.loader;

import haxe.Constraints.Function;

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