package pixi.render.systems;

import pixi.enums.MSAAQuality;
import pixi.geom.ISize;
import pixi.geom.Rectangle;
import pixi.textures.Framebuffer;
import pixi.textures.GLFramebuffer;

/**
 * System plugin to the renderer to manage framebuffers.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.FramebufferSystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_framebuffer_FramebufferSystem.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.systems.FramebufferSystem")
extern class FramebufferSystem extends System
{
    /**
     * Create a new FramebufferSystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * A list of managed framebuffers.
     */
    public var managedFramebuffers(default, null):Array<Framebuffer>;

    /**
     * Get the size of the current width and height.  
     * Returns object with `width` and `height` values.
     */
    public var size(default, null):ISize;

    /**
     * Framebuffer value that shows that we don't know what is bound.
     */
    public var unknownFramebuffer(default, null):Framebuffer;

    /**
     * Bind a framebuffer.
     * @param framebuffer Framebuffer.
     * @param frame Frame, default is framebuffer size.
     */
    public function bind(framebuffer:Framebuffer, ?frame:Rectangle):Void;

    /**
     * Only works with WebGL2.  
     * Blits framebuffer to another of the same or bigger size after that target
     * framebuffer is bound.  
     * Fails with WebGL warning if blits multisample framebuffer to different size.
     * @param framebuffer By default it blits "into itself", from renderBuffer to texture.
     * @param sourcePixels Source rectangle in pixels.
     * @param destPixels Dest rectangle in pixels, assumed to be the same as sourcePixels.
     */
    public function blit(?framebuffer:Framebuffer, ?sourcePixels:Rectangle, ?destPixels:Rectangle):Void;

    /**
     * Clear the color of the context.
     * @param r Red value from `0` to `1`.
     * @param g Green value from `0` to `1`.
     * @param b Blue value from `0` to `1`.
     * @param a Alpha value from `0` to `1`.
     * @param mask Bitwise OR of masks that indicate the buffers to be cleared, by default
     *             COLOR and DEPTH buffers. Default: `BufferBits.COLOR | BufferBits.DEPTH`
     */
    public function clear(r:Float, g:Float, b:Float, a:Float, ?mask:Int):Void;

    /**
     * Sets up the renderer context and necessary buffers.
     */
    public function contextChange():Void;

    /**
     * Detects number of samples that is not more than a param but as
     * close to it as possible.
     * @param samples Number of samples.
     * @return Recommended number of samples.
     */
    public function detectSamples(samples:MSAAQuality):MSAAQuality;

    /**
     * Disposes all framebuffers, but not textures bound to them.
     * @param contextLost If context was lost, we suppress all delete
     *                    function calls. Default: `false`
     */
    public function disposeAll(?contextLost:Bool):Void;

    /**
     * Disposes framebuffer.
     * @param framebuffer Framebuffer that has to be disposed of.
     * @param contextLost If context was lost, we suppress all delete function
     *                    calls. Default: `false`
     */
    public function disposeFramebuffer(framebuffer:Framebuffer, ?contextLost:Bool):Void;

    /**
     * Initialize framebuffer for this context.
     * @param framebuffer Framebuffer.
     * @return Created GLFramebuffer.
     */
    private function initFramebuffer(framebuffer:Framebuffer):GLFramebuffer;

    /**
     * Resets framebuffer stored state, binds screen framebuffer.  
     * Should be called before renderTexture reset().
     */
    public function reset():Void;

    /**
     * Resize the framebuffer.
     */
    private function resizeFramebuffer(framebuffer:Framebuffer):Void;

    /**
     * Set the WebGLRenderingContext's viewport.
     * @param x X position of viewport.
     * @param y Y position of viewport.
     * @param width Width of viewport.
     * @param height Height of viewport.
     */
    public function setViewport(x:Float, y:Float, width:Float, height:Float):Void;

    /**
     * Update the framebuffer.
     */
    private function updateFramebuffer(framebuffer:Framebuffer):Void;
}