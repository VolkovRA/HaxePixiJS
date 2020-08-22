package pixi.loader;

import haxe.Constraints.Function;

/**
 * [Loader](http://pixijs.download/release/docs/PIXI.Loader.html) middleware
 * for loading texture atlases that have been created with TexturePacker or
 * similar JSON-based spritesheet.
 * 
 * This middleware automatically generates Texture resources.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.SpritesheetLoader.html
 * @see Source code: http://pixijs.download/release/docs/packages_spritesheet_src_SpritesheetLoader.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.SpritesheetLoader")
extern class SpritesheetLoader
{
    /**
     * Create a new SpritesheetLoader instance.
     */
    public function new();

    /**
     * Get the spritesheets root path.
     * @param resource Resource to check path.
     * @param baseUrl Base root url.
     */
    static public function getResourcePath(resource:LoaderResource, baseUrl:String):Void;

    /**
     * Called after a resource is loaded.
     */
    static public function use(resource:LoaderResource, next:Function):Void;
}