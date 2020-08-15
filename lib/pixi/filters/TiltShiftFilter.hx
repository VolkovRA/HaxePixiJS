package pixi.filters;

import pixi.geom.Point;

/**
 * A TiltShift Filter. Manages the pass of both a TiltShiftXFilter and TiltShiftYFilter.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.TiltShiftFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_tilt-shift_src_TiltShiftFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.TiltShiftFilter")
extern class TiltShiftFilter extends Filter
{
    /**
     * Create a new TiltShiftFilter instance.
     * @param blur The strength of the blur.  
     *             Default: `100`
     * @param gradientBlur The strength of the gradient blur.  
     *                     Default: `600`
     * @param start The Y value to start the effect at.  
     *              Default: `null`
     * @param end The Y value to end the effect at.  
     *            Default: `null`
     */
    public function new(?blur:Float, ?gradientBlur:Float, ?start:Point, ?end:Point);

    /**
     * The strength of the blur.
     */
    public var blur:Float;

    /**
     * The Y value to end the effect at.
     */
    public var end:Point;

    /**
     * The strength of the gradient blur.
     */
    public var gradientBlur:Float;

    /**
     * The Y value to start the effect at.
     */
    public var start:Point;
}
