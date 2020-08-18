package pixi.resources;

import js.html.CanvasElement;

/**
 * Resource type for HTMLCanvasElement.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.resources.CanvasResource.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_resources_CanvasResource.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.resources.CanvasResource")
extern class CanvasResource extends BaseImageResource
{
    /**
     * Create a new CanvasResource instance.
     * @param source Canvas element to use.
     */
    public function new(source:CanvasElement);

    /**
     * Used to auto-detect the type of resource.
     * @param source The source object.
     * @return `true` if source is HTMLCanvasElement or OffscreenCanvas.
     */
    static public function test(source:Dynamic):Bool;
}