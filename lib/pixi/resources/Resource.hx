package pixi.resources;

import js.lib.Promise;
import pixi.textures.BaseTexture;
import pixi.textures.GLTexture;
import pixi.render.Renderer;

/**
 * Base resource class for textures that manages validation and
 * uploading, depending on its type.
 * 
 * Uploading of a base texture to the GPU is required.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.resources.Resource.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_resources_Resource.js.html
 */
@:native("PIXI.resources.Resource")
extern class Resource
{
    /**
     * Create a new Resource instance.
     * @param width Width of the resource. Default: `0`
     * @param height Height of the resource. Default: `0`
     */
    public function new(?width:Float, ?height:Float);

    /**
     * Internal width of the resource.
     */
    private var _width:Float;

    /**
     * Internal height of the resource.
     */
    private var _height:Float;

    /**
     * `true` if resource is created by BaseTexture useful for doing cleanup with
     * BaseTexture destroy and not cleaning up resources that were created externally.
     */
    private var internal:Bool;

    /**
     * If resource has been destroyed.
     * 
     * Default: `false`
     */
    public var destroyed:Bool;

    /**
     * The width of the resource.
     */
    public var width(default, null):Float;

    /**
     * The height of the resource.
     */
    public var height(default, null):Float;

    /**
     * Has been validated.
     */
    public var valid:Bool;

    /**
     * Abstract, used to auto-detect resource type.
     * @param source The source object.
     * @param extension The extension of source, if set.
     */
    static public function test(source:Dynamic, extension:String):Void;

    /**
     * Bind to a parent BaseTexture.
     * @param baseTexture Parent texture.
     */
    public function bind(baseTexture:BaseTexture):Void;

    /**
     * Call when destroying resource, unbind any BaseTexture object before calling
     * this method, as reference counts are maintained internally.
     */
    public function destroy():Void;

    /**
     * Clean up anything, this happens when destroying is ready.
     */
    private function dispose():Void;

    /**
     * This can be overridden to start preloading a resource or do any other prepare step.
     * @return Handle the validate event.
     */
    private function load():Promise<Dynamic>;

    /**
     * Trigger a resize event.
     * @param width X dimension.
     * @param height Y dimension.
     */
    public function resize(width:Float, height:Float):Void;

    /**
     * Set the style, optional to override.
     * @param renderer Yeah, renderer!
     * @param baseTexture The texture.
     * @param glTexture Texture instance for this webgl context.
     * @return `true` is success.
     */
    public function style(renderer:Renderer, baseTexture:BaseTexture, glTexture:GLTexture):Bool;

    /**
     * Unbind to a parent BaseTexture.
     * @param baseTexture Parent texture.
     */
    public function unbind(baseTexture:BaseTexture):Void;

    /**
     * Has been updated trigger event.
     */
    public function update():Void;
}