package pixi.filters;

import haxe.extern.EitherType;

/**
 * Replace all colors within a source graphic with a single color.
 * 
 * Example:
 * ```
 * // replaces red with blue
 * someSprite.filters = [new ColorOverlayFilter(
 *     [1, 0, 0],
 *     [0, 0, 1],
 *     0.001
 * )];
 * ```
 * 
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.ColorOverlayFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_color-overlay_src_ColorOverlayFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.ColorOverlayFilter")
extern class ColorOverlayFilter extends Filter
{
    /**
     * Create a new ColorOverlayFilter instance.
     * @param color The resulting color, as a 3 component RGB e.g. [1.0, 0.5, 1.0]
     */
    public function new(?color:EitherType<Int,Array<Float>>);

    /**
     * The resulting color, as a 3 component RGB e.g. [1.0, 0.5, 1.0]  
     * Can be:
     * - Int.
     * - Array[Float].
     * 
     * Default: `0x000000`
     */
    public var color:Dynamic;
}