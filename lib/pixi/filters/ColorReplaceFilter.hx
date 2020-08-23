package pixi.filters;

import haxe.extern.EitherType;

/**
 * ColorReplaceFilter, originally by mishaa, updated by timetocode
 * http://www.html5gamedevs.com/topic/10640-outline-a-sprite-change-certain-colors/?p=69966
 * 
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.ColorReplaceFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_color-replace_src_ColorReplaceFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.ColorReplaceFilter")
extern class ColorReplaceFilter extends Filter
{
    /**
     * Create a new ColorReplaceFilter instance.
     * @param originalColor The color that will be changed, as a 3 component RGB e.g. [1.0, 1.0, 1.0].  
     *                      Default: `0xFF0000`
     * @param newColor The resulting color, as a 3 component RGB e.g. [1.0, 0.5, 1.0].  
     *                 Default: `0x000000`
     * @param epsilon Tolerance/sensitivity of the floating-point comparison between colors (lower = more exact, higher = more inclusive)  
     *                Default: `0.4`
     */
    public function new(?originalColor:EitherType<Int,Array<Float>>, ?newColor:EitherType<Int,Array<Float>>, ?epsilon:Float);

    /**
     * Tolerance/sensitivity of the floating-point comparison between
     * colors (lower = more exact, higher = more inclusive)  
     * Default: `0.4`
     */
    public var epsilon:Float;

    /**
     * The resulting color, as a 3 component RGB e.g. [1.0, 0.5, 1.0]  
     * Can be:
     * - Int.
     * - Array[Float].
     * 
     * Default: `0x000000`
     */
    public var newColor:Dynamic;

    /**
     * The color that will be changed, as a 3 component RGB e.g. [1.0, 1.0, 1.0]  
     * Can be:
     * - Int.
     * - Array[Float].
     * 
     * Default: `0xFF0000`
     */
    public var originalColor:Dynamic;
}