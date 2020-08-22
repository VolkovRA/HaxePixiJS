package pixi.render;

import pixi.display.Graphics;

/**
 * Renderer dedicated to drawing and batching graphics objects.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.CanvasGraphicsRenderer.html
 * @see Source code: http://pixijs.download/release/docs/packages_canvas_canvas-graphics_src_CanvasGraphicsRenderer.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.CanvasGraphicsRenderer")
extern class CanvasGraphicsRenderer
{
    /**
     * Create a new CanvasGraphicsRenderer instance.
     * @param renderer The current PIXI renderer.
     */
    private function new(renderer:CanvasRenderer);

    /**
     * Destroy graphics object.
     */
    public function destroy():Void;

    /**
     * Renders a Graphics object to a canvas.
     * @param graphics The actual graphics object to render.
     */
    public function render(graphics:Graphics):Void;
}