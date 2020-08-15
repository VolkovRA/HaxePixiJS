package pixi.filters;

/**
 * An ASCII filter.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.AsciiFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_ascii_src_AsciiFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.AsciiFilter")
extern class AsciiFilter extends Filter
{
    /**
     * Create a new AsciiFilter instance.
     * @param size Size of the font.  
     *             Default: `8`
     */
    public function new(?size:Float);

    /**
     * The pixel size used by the filter.
     */
    public var size:Float;    
}