package pixi.filters;

import pixi.geom.Point;

/**
 * An RGB Split Filter.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.RGBSplitFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_rgb-split_src_RGBSplitFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.RGBSplitFilter")
extern class RGBSplitFilter extends Filter
{
    /**
     * Create a new RGBSplitFilter instance.
     * @param red Red channel offset.  
     *            Default: `[-10,0]`
     * @param green Green channel offset.  
     *              Default: `[0,10]`
     * @param blue Blue channel offset.  
     *             Default: `[0,0]`
     */
    public function new(?red:Point, ?green:Point, ?blue:Point);

    /**
     * Blue offset.
     */
    public var blue:Point;

    /**
     * Green channel offset.
     */
    public var green:Point;

    /**
     * Red channel offset.
     */
    public var red:Point;
}