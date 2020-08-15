package pixi.filters;

/**
 * OutlineFilter, originally by mishaa
 * http://www.html5gamedevs.com/topic/10640-outline-a-sprite-change-certain-colors/?p=69966
 * http://codepen.io/mishaa/pen/emGNRB
 * 
 * Example:
 * ```
 * someSprite.filters = [new OutlineFilter(2, 0x99ff99)];
 * ```
 * 
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.OutlineFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_outline_src_OutlineFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.OutlineFilter")
extern class OutlineFilter extends Filter
{
    /**
     * Create a new OutlineFilter instance.
     * @param thickness The tickness of the outline. Make it 2 times more for resolution 2.  
     *                  Default: `1`
     * @param color The color of the outline.  
     *              Default: `0x000000`
     * @param quality The quality of the outline from 0 to 1, using a higher quality
     *                setting will result in slower performance and more accuracy.  
     *                Default: `0.1`
     */
    public function new(?thickness:Float, ?color:Int, ?quality:Float);

    /**
     * The maximum number of samples for rendering outline.  
     * Default: `100`
     */
    static public var MAX_SAMPLES:Float;

    /**
     * The minimum number of samples for rendering outline.  
     * Default: `1`
     */
    static public var MIN_SAMPLES:Float;

    /**
     * The color of the glow.  
     * Default: `0x000000`
     */
    public var color:Int;

    /**
     * The thickness of the outline.  
     * Default: `1`
     */
    public var thickness:Float;
}