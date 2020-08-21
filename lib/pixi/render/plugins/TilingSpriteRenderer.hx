package pixi.render.plugins;

import pixi.display.TilingSprite;

/**
 * WebGL renderer plugin for tiling sprites
 * @see Documentation: http://pixijs.download/release/docs/PIXI.TilingSpriteRenderer.html
 * @see Source code: http://pixijs.download/release/docs/packages_sprite-tiling_src_TilingSpriteRenderer.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.TilingSpriteRenderer")
extern class TilingSpriteRenderer extends ObjectRenderer
{
    /**
     * Constructor for renderer.
     * @param renderer The renderer this tiling awesomeness works for.
     */
    public function new(renderer:Renderer);

    /**
     * The WebGL state in which this renderer will work.
     */
    public var state(default, null):State;

    /**
     * Render.
     * @param ts TilingSprite to be rendered.
     */
    override public function render(ts:TilingSprite):Void; 
}