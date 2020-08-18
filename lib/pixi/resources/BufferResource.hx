package pixi.resources;

import haxe.extern.EitherType;
import js.lib.Uint8Array;
import js.lib.Uint32Array;
import js.lib.Float32Array;
import pixi.render.Renderer;
import pixi.textures.BaseTexture;
import pixi.textures.GLTexture;

/**
 * Buffer resource with data of typed array.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.resources.BufferResource.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_resources_BufferResource.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.resources.BufferResource")
extern class BufferResource extends Resource
{
    /**
     * Create a new BufferResource instance.
     * @param source Source buffer.
     * @param options Options.
     */
    public function new(source:EitherType<Uint8Array,EitherType<Uint32Array,Float32Array>>, options:BufferResourceOptions);

    /**
     * Source array Cannot be ClampedUint8Array because it cant be uploaded to WebGL.
     */
    public var data:EitherType<Uint8Array,EitherType<Uint32Array,Float32Array>>;

    /**
     * Used to auto-detect the type of resource.
     * @param source The source object.
     * @return `true` if.
     */
    static public function test(source:Dynamic):Bool;

    /**
     * Clean up anything, this happens when destroying is ready.
     */
    override private function dispose():Void;

    /**
     * Upload the texture to the GPU.
     * @param renderer Upload to the renderer.
     * @param baseTexture Reference to parent texture.
     * @param glTexture glTexture.
     * @return true is success.
     */
    public function upload(renderer:Renderer, baseTexture:BaseTexture, glTexture:GLTexture):Bool;
}

/**
 * The options object to BufferResource constructor.
 * ***
 * Library: **core** 
 */
typedef BufferResourceOptions =
{
    /**
     * Width of the texture.
     */
    var width:Int;

    /**
     * Height of the texture.
     */
    var height:Int;
}