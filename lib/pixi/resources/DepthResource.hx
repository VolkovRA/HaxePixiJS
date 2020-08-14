package pixi.resources;

import pixi.render.Renderer;
import pixi.textures.BaseTexture;
import pixi.textures.GLTexture;

/**
 * Resource type for DepthTexture.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.resources.DepthResource.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_resources_DepthResource.js.html
 */
@:native("PIXI.resources.DepthResource")
extern class DepthResource extends BufferResource
{
    /**
     * Create a new DepthResource instance.
     */
    public function new();

    /**
     * Upload the texture to the GPU.
     * @param renderer Upload to the renderer.
     * @param baseTexture Reference to parent texture.
     * @param glTexture glTexture.
     * @return True is success.
     */
    override public function upload(renderer:Renderer, baseTexture:BaseTexture, glTexture:GLTexture):Bool;
}