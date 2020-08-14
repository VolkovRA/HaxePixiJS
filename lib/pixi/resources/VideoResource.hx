package pixi.resources;

import haxe.extern.EitherType;
import js.lib.Promise;
import js.html.CanvasElement;
import js.html.ImageElement;
import js.html.VideoElement;
import js.html.svg.Element;
import pixi.textures.BaseTexture;
import pixi.textures.GLTexture;
import pixi.render.Renderer;

/**
 * Resource type for HTMLVideoElement.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.resources.VideoResource.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_resources_VideoResource.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.resources.VideoResource")
extern class VideoResource extends BaseImageResource
{
    /**
     * Create a new VideoResource instance.
     * @param source Video element to use. (HTMLVideoElement | object | string | Array<(string|object)>)
     * @param options Options of VideoResource.
     */
    public function new(source:Dynamic, ?options:VideoResourceOptions);

    /**
     * Map of video MIME types that can't be directly derived from file extensions.
     */
    static public var MIME_TYPES(default, null):Dynamic;

    /**
     * List of common video file extensions supported by VideoResource.
     */
    static public var TYPES(default, null):Array<String>;

    /**
     * When set to true will automatically play videos used by this texture once they are loaded.
     * If false, it will not modify the playing state.  
     * Default: `true`
     */
    public var autoPlay:Bool;

    /**
     * Should the base texture automatically update itself, set to true by default.
     */
    public var autoUpdate:Bool;

    /**
     * How many times a second to update the texture from the video.
     * Leave at 0 to update at every render. A lower fps can help performance, as updating
     * the texture at 60fps on a 30ps video may not be efficient.
     */
    public var updateFPS:Float;

    /**
     * Used to auto-detect the type of resource.
     * @param source The source object.
     * @param extension The extension of source, if set.
     * @return `true` if video source.
     */
    static public function test(source:Dynamic, extension:String):Bool;

    /**
     * Call when destroying resource, unbind any BaseTexture object before calling
     * this method, as reference counts are maintained internally.
     */
    override private function dispose():Void;

    /**
     * Start preloading the video resource.
     * @return Handle the validate event.
     */
    public function load():Promise<Dynamic>;

    /**
     * Trigger updating of the texture.
     * @param deltaTime Time delta since last tick. Default: `0`
     */
    public function update(?deltaTime:Float):Void;
}

/**
 * Options of VideoResource.
 * ***
 * Library: **core** 
 */
typedef VideoResourceOptions = 
{
    /**
     * Start loading the video immediately.  
     * Default: `true`
     */
    @:optional var autoLoad:Bool;

    /**
     * Start playing video immediately.  
     * Default: `true`
     */
    @:optional var autoPlay:Bool;

    /**
     * How many times a second to update the texture from the video.
     * Leave at 0 to update at every render.  
     * Default: `0`
     */
    @:optional var updateFPS:Float;

    /**
     * Load image using cross origin.  
     * Default: `true`
     */
    @:optional var crossorigin:Bool;
}