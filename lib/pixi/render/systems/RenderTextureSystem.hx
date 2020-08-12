package pixi.render.systems;

import pixi.display.Graphics;
import pixi.geom.Rectangle;
import pixi.textures.RenderTexture;

/**
 * System plugin to the renderer to manage render textures.
 * 
 * Should be added after FramebufferSystem.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.RenderTextureSystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_renderTexture_RenderTextureSystem.js.html
 */
@:native("PIXI.systems.RenderTextureSystem")
extern class RenderTextureSystem extends System
{
    /**
     * Create a new RenderTextureSystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * The clear background color as rgba.
     */
    public var clearColor:Array<Float>;

    /**
     * Render texture.
     */
    public var current(default, null):RenderTexture;

    /**
     * List of masks for the StencilSystem.
     */
    public var defaultMaskStack(default, null):Array<Graphics>;

    /**
     * Destination frame.
     */
    public var destinationFrame(default, null):Rectangle;

    /**
     * Source frame.
     */
    public var sourceFrame(default, null):Rectangle;

    /**
     * Bind the current render texture.
     * @param renderTexture RenderTexture to bind, by default its `null`, the screen. Default: `null`
     * @param sourceFrame Part of screen that is mapped to the renderTexture.
     * @param destinationFrame Part of renderTexture, by default it has the same size as sourceFrame.
     */
    public function bind(?renderTexture:RenderTexture, ?sourceFrame:Rectangle, ?destinationFrame:Rectangle):Void;

    /**
     * Erases the render texture and fills the drawing area with a colour.
     * @param clearColor The color as rgba, default to use the renderer backgroundColor.
     * @param mask Bitwise OR of masks that indicate the buffers to be cleared, by default COLOR and
     *             DEPTH buffers. Default: `BufferBits.COLOR | BufferBits.DEPTH`
     * @return Returns itself.
     */
    public function clear(?clearColor:Array<Int>, ?mask:Int):Renderer;

    /**
     * Resets renderTexture state.
     */
    public function reset():Void;
}