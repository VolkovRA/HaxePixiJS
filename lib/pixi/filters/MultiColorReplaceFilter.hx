package pixi.filters;

/**
 * Filter for replacing a color with another color.
 * Similar to ColorReplaceFilter, but support multiple colors.
 * 
 * Example:
 * ```
 * // Replaces pure red with pure blue, and replaces pure green with pure white
 * someSprite.filters = [new MultiColorReplaceFilter(
 *     [
 *       [0xFF0000, 0x0000FF],
 *       [0x00FF00, 0xFFFFFF]
 *     ],
 *     0.001
 * )];
 * 
 * // You also could use [R, G, B] as the color
 * someOtherSprite.filters = [new MultiColorReplaceFilter(
 *     [
 *         [ [1,0,0], [0,0,1] ],
 *         [ [0,1,0], [1,1,1] ]
 *     ],
 *     0.001
 *  )];
 * ```
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.MultiColorReplaceFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_multi-color-replace_src_MultiColorReplaceFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.MultiColorReplaceFilter")
extern class MultiColorReplaceFilter extends Filter
{
    /**
     * Create a new MultiColorReplaceFilter instance.
     * @param replacements The collection of replacement items. Each item is color-pair
     *                     (an array length is 2). In the pair, the first value is original
     *                     color , the second value is target color.
     * @param epsilon Tolerance of the floating-point comparison between colors
     *                (lower = more exact, higher = more inclusive)  
     *                Default: `0.05`
     * @param maxColors The maximum number of replacements filter is able to use. Because
     *                  the fragment is only compiled once, this cannot be changed after
     *                  construction. If omitted, the default value is the length of `replacements`.
     */
    public function new(replacements:Array<Array<Int>>, ?epsilon:Float, ?maxColors:Float);

    /**
     * Tolerance of the floating-point comparison between colors
     * (lower = more exact, higher = more inclusive)  
     * Default: `0.05`
     */
    public var epsilon:Float;

    /**
     * The maximum number of color replacements supported by this filter.
     * Can be changed only during construction.
     */
    public var maxColors(default, null):Int;

    /**
     * The source and target colors for replacement.
     * See constructor for information on the format.
     */
    public var replacements:Array<Array<Int>>;

    /**
     * Should be called after changing any of the contents of the replacements.
     * This is a convenience method for resetting the `replacements`.
     */
    public function refresh():Void;
}