package pixi.resources;

import haxe.extern.EitherType;
import pixi.textures.BaseTexture;
import pixi.textures.GLTexture;
import pixi.render.Renderer;

/**
 * A resource that contains a number of sources.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.resources.ArrayResource.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_resources_ArrayResource.js.html
 */
@:native("PIXI.resources.ArrayResource")
extern class ArrayResource extends Resource
{
    /**
     * Create a new ArrayResource instance.
     * @param source Number of items in array or the collection of image URLs to use. Can also be resources, image elements, canvas, etc.
     * @param options ImageResource options.
     */
    public function new(source:EitherType<Int,Array<Dynamic>>, ?options:ArrayResourceOptions);

    /**
     * Set a baseTexture by ID, ArrayResource just takes resource from it, nothing more.
     * @param baseTexture Base texture.
     * @param index Zero-based index of resource to set.
     * @return Instance for chaining.
     */
    public function addBaseTextureAt(baseTexture:BaseTexture, index:Int):ArrayResource;

    /**
     * Bind to a parent BaseTexture.
     * @param baseTexture Parent texture.
     */
    override public function bind(baseTexture:BaseTexture):Void;

    /**
     * Upload the resources to the GPU.
     * @param renderer Renderer.
     * @param texture Base texture.
     * @param glTexture GL Texture.
     * @return Whether texture was uploaded.
     */
    public function upload(renderer:Renderer, texture:BaseTexture, glTexture:GLTexture):Bool;
}

/**
 * The options object to ArrayResource constructor.
 */
typedef ArrayResourceOptions = 
{
    /**
     * Width of resource.
     */
    @:optional var width:Float;

    /**
     * Height of resource.
     */
    @:optional var height:Float;
}
