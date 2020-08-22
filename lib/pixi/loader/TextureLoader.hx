package pixi.loader;

import haxe.Constraints.Function;

/**
 * Loader plugin for handling Texture resources.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.TextureLoader.html
 * @see Source code: http://pixijs.download/release/docs/packages_loaders_src_TextureLoader.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.TextureLoader")
extern class TextureLoader
{
    /**
     * Create a new TextureLoader instance.
     */
    public function new();

    /**
     * Called after a resource is loaded.
     */
    static public function use(resource:LoaderResource, next:Function):Void;
}