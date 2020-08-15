package pixi.textures;

import pixi.enums.MSAAQuality;

/**
 * Frame buffer used by the BaseRenderTexture.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Framebuffer.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_framebuffer_Framebuffer.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Framebuffer")
extern class Framebuffer
{
    /**
     * Create a new Framebuffer instance.
     * @param width Width of the frame buffer.
     * @param height Height of the frame buffer.
     */
    public function new(width:Int, height:Int);

    /**
     * Reference to the colorTexture.
     */
    public var colorTexture(default, null):Array<BaseTexture>;

    /**
     * Width of framebuffer in pixels.
     */
    public var width:Int;

    /**
     * Height of framebuffer in pixels.
     */
    public var height:Int;

    /**
     * Desired number of samples for antialiasing. 0 means AA should not be used.
     * 
     * Experimental WebGL2 feature, allows to use antialiasing in individual renderTextures.
     * Antialiasing is the same as for main buffer with renderer `antialias:true` options.
     * Seriously affects GPU memory consumption and GPU performance.
     * ```
     * renderTexture.framebuffer.multisample = MSAAQuality.HIGH;
     * //...
     * renderer.render(renderTexture, myContainer);
     * renderer.framebuffer.blit(); // copies data from MSAA framebuffer to texture
     * ```
     * Default: `MSAAQuality.NONE`
     */
    public var multisample:MSAAQuality;

    /**
     * Add texture to the colorTexture array.
     * @param index Index of the array to add the texture to. Default: `0`
     * @param texture Texture to add to the array.
     */
    public function addColorTexture(?index:Int, ?texture:BaseTexture):Void;

    /**
     * Add a depth texture to the frame buffer.
     * @param texture Texture to add.
     */
    public function addDepthTexture(?texture:BaseTexture):Void;

    /**
     * Destroys and removes the depth texture added to this framebuffer.
     */
    public function destroyDepthTexture():Void;

    /**
     * Disposes WebGL resources that are connected to this geometry.
     */
    public function dispose():Void;

    /**
     * Enable depth on the frame buffer.
     */
    public function enableDepth():Void;

    /**
     * Enable stencil on the frame buffer.
     */
    public function enableStencil():Void;

    /**
     * Resize the frame buffer.
     * @param width Width of the frame buffer to resize to.
     * @param height Height of the frame buffer to resize to.
     */
    public function resize(width:Int, height:Int):Void;
}