package pixi.filters;

/**
 * This filter applies a dotscreen effect making display objects appear
 * to be made out of black and white halftone dots like an old printer.
 * 
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.DotFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_dot_src_DotFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.DotFilter")
extern class DotFilter extends Filter
{
    /**
     * Create a new DotFilter instance.
     * @param scale The scale of the effect.  
     *              Default: `1`
     * @param angle The radius of the effect.  
     *              Default: `5`
     */
    public function new(?scale:Float, ?angle:Float);

    /**
     * The radius of the effect.  
     * Default: `5`
     */
    public var angle:Float;

    /**
     * The scale of the effect.  
     * Default: `1`
     */
    public var scale:Float;
}