package pixi.render;

import pixi.display.Sprite;

/**
 * Renderer dedicated to drawing and batching sprites.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.CanvasSpriteRenderer.html
 * @see Source code: http://pixijs.download/release/docs/packages_canvas_canvas-sprite_src_CanvasSpriteRenderer.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.CanvasSpriteRenderer")
extern class CanvasSpriteRenderer
{
    /**
     * Create a new CanvasSpriteRenderer instance.
     * @param renderer The renderer sprite this batch works for.
     */
    private function new(renderer:CanvasRenderer);

    /**
     * Destroy the sprite object.
     */
    public function destroy():Void;

    /**
     * Renders the sprite object.
     * @param sprite The sprite to render when using this spritebatch.
     */
    public function render(sprite:Sprite):Void;
}