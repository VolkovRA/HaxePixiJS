package pixi.resources;

import js.html.ImageBitmap;

/**
 * Resource type for ImageBitmap.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.resources.ImageBitmapResource.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_resources_ImageBitmapResource.js.html
 */
@:native("PIXI.resources.ImageBitmapResource")
extern class ImageBitmapResource extends BaseImageResource
{
    /**
     * Create a new ImageBitmapResource instance.
     * @param source Image element to use. 
     */
    public function new(source:ImageBitmap);

    /**
     * Used to auto-detect the type of resource.
     * @param source The source object.
     * @return `true` if source is an ImageBitmap
     */
    static public function test(source:ImageBitmap):Bool;
}