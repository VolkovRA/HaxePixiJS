package pixi.filters;

import pixi.display.Sprite;
import pixi.geom.Matrix;

/**
 * This handles a Sprite acting as a mask, as opposed to a Graphic.  
 * WebGL only.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.SpriteMaskFilter.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_filters_spriteMask_SpriteMaskFilter.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.SpriteMaskFilter")
extern class SpriteMaskFilter extends Filter
{
    /**
     * Create a new SpriteMaskFilter instance.
     * @param sprite The target sprite.
     */
    public function new(sprite:Sprite);

    /**
     * Mask matrix.
     */
    public var maskMatrix:Matrix;

    /**
     * Sprite mask.
     */
    public var maskSprite:Sprite;
}