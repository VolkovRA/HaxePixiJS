package pixi.resources;

import haxe.extern.EitherType;
import pixi.textures.BaseTexture;

/**
 * Resource for a CubeTexture which contains six resources.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.resources.CubeResource.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_resources_CubeResource.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.resources.CubeResource")
extern class CubeResource extends ArrayResource
{
    /**
     * Create a new CubeResource instance.
     * @param source Collection of URLs or resources to use as the sides of the cube.
     * @param options ImageResource options.
     */
    public function new(?source:Array<EitherType<String,Resource>>, ?options:CubeResourceOptions);

    /**
     * Number of texture sides to store for CubeResources.  
     * Default: `6`
     */
    static public var SIDES:Int;

    /**
     * In case BaseTextures are supplied, whether to use same resource or bind baseTexture itself.
     */
    private var linkBaseTexture:Bool;

    /**
     * Used to auto-detect the type of resource.
     * @param source The source object.
     * @return `true` if source is an array of 6 elements.
     */
    static public function test(source:Dynamic):Bool;

    /**
     * Set a baseTexture by ID, ArrayResource just takes resource from it, nothing more.
     * @param baseTexture Base texture.
     * @param index Zero-based index of resource to set.
     * @return Instance for chaining.
     */
    override public function addBaseTextureAt(baseTexture:BaseTexture, index:Int):ArrayResource;

    /**
     * Bind to a parent BaseTexture.
     * @param baseTexture Parent texture.
     */
    override public function bind(baseTexture:BaseTexture):Void;

    /**
     * Upload the resource.
     * @return True is success.
     */
    override public function upload():Bool;
}

/**
 * The options object to CubeResource constructor.
 * ***
 * Library: **core** 
 */
typedef CubeResourceOptions =
{
    /**
     * Width of resource.
     */
    @:optional var width:Float;

    /**
     * Height of resource.
     */
    @:optional var height:Float;

    /**
     * Whether to auto-load resources.  
     * Default: `true`
     */
    @:optional var autoLoad:Bool;

    /**
     * In case BaseTextures are supplied, whether to copy them or use.  
     * Default: `true`
     */
    @:optional var linkBaseTexture:Bool;
}