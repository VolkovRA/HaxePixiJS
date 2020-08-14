package pixi.resources;

import js.lib.Promise;
import pixi.textures.BaseTexture;

/**
 * Resource that can manage several resource (items) inside. 
 * All resources need to have the same pixel size.
 * Parent class for CubeResource and ArrayResource.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.resources.AbstractMultiResource.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_resources_AbstractMultiResource.js.html
 */
@:native("PIXI.resources.AbstractMultiResource")
extern class AbstractMultiResource extends Resource
{
    /**
     * Create a new AbstractMultiResource instance.
     * @param options Options to for Resource constructor.
     */
    public function new(?options:AbstractMultiResourceOptions);

    /**
     * Internal width of the resource.
     */
    override private var _width:Float;

    /**
     * Internal height of the resource.
     */
    override private var _height:Float;

    /**
     * Bound baseTexture, there can only be one.
     */
    public var baseTexture:BaseTexture;

    /**
     * Dirty IDs for each part.
     */
    public var itemDirtyIds(default, null):Array<Int>;

    /**
     * Collection of partial baseTextures that correspond to resources.
     */
    public var items(default, null):Array<BaseTexture>;

    /**
     * Number of elements in array.
     */
    public var length(default, null):Int;

    /**
     * Has been validated.
     */
    public var valid(default, null):Bool;

    /**
     * Set a resource by ID.
     * @param resource Resource.
     * @param index Zero-based index of resource to set.
     * @return ArrayResource
     */
    public function addResourceAt(resource:Resource, index:Int):ArrayResource;

    /**
     * Bind to a parent BaseTexture.
     * @param baseTexture Parent texture.
     */
    override public function bind(baseTexture:BaseTexture):Void;

    /**
     * Clean up anything, this happens when destroying is ready.
     */
    override public function dispose():Void;

    /**
     * Used from ArrayResource and CubeResource constructors.
     * @param resources Can be resources, image elements, canvas, etc. , length should
     *                  be same as constructor length.
     * @param options Detect options for resources.
     */
    private function initFromArray(resources:Array<Dynamic>, ?options:Dynamic):Void;

    /**
     * This can be overridden to start preloading a resource or do any other prepare step.
     * @return Handle the validate event.
     */
    override public function load():Promise<Dynamic>;

    /**
     * Unbind to a parent BaseTexture.
     * @param baseTexture Parent texture.
     */
    override public function unbind(baseTexture:BaseTexture):Void;
}

/**
 * The options of AbstractMultiResource constructor.
 */
typedef AbstractMultiResourceOptions =
{
    /**
     * Width of the resource.
     */
    @:optional var width:Float;

    /**
     * Height of the resource.
     */
    @:optional var height:Float;
}