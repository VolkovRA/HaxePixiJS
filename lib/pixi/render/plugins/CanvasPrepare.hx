package pixi.render.plugins;

/**
 * The prepare manager provides functionality to upload content to the GPU.
 * 
 * This cannot be done directly for Canvas like in WebGL, but the effect can
 * be achieved by drawing textures to an offline canvas. This draw call will
 * force the texture to be moved onto the GPU.
 * 
 * An instance of this class is automatically created by default, and can be
 * found at `renderer.plugins.prepare`.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.CanvasPrepare.html
 * @see Source code: http://pixijs.download/release/docs/packages_canvas_canvas-prepare_src_CanvasPrepare.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.CanvasPrepare")
extern class CanvasPrepare extends BasePrepare<CanvasPrepare>
{
    /**
     * Create a new CanvasPrepare instance.
     * @param renderer A reference to the current renderer.
     */
    public function new(renderer:CanvasRenderer);

    /**
     * Destroys the plugin, don't use after this.
     */
    override public function destroy():Void;
}