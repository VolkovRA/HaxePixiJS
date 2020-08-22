package pixi.loader;

import haxe.Constraints.Function;

/**
 * [Loader](http://pixijs.download/release/docs/PIXI.Loader.html) middleware
 * for loading bitmap-based fonts suitable for using with [BitmapText](http://pixijs.download/release/docs/PIXI.BitmapText.html).
 * @see Documentation: http://pixijs.download/release/docs/PIXI.BitmapFontLoader.html
 * @see Source code: http://pixijs.download/release/docs/packages_text-bitmap_src_BitmapFontLoader.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.BitmapFontLoader")
extern class BitmapFontLoader
{
    /**
     * Create a new BitmapFontLoader instance.
     */
    public function new();

    /**
     * Called when the plugin is installed.
     */
    static public function add():Void;

    /**
     * Called after a resource is loaded.
     */
    static public function use(resource:LoaderResource, next:Function):Void;
}