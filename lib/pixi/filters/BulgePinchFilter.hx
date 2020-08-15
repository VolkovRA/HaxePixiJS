package pixi.filters;

import haxe.extern.EitherType;
import pixi.geom.Point;

/**
 * Bulges or pinches the image in a circle.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.BulgePinchFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_bulge-pinch_src_BulgePinchFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.BulgePinchFilter")
extern class BulgePinchFilter extends Filter
{
    /**
     * Create a new BulgePinchFilter instance.
     * @param options Options to use for filter.
     */
    public function new(?options:BulgePinchFilterOptions);

    /**
     * The x and y coordinates of the center of the circle of effect.
     */
    public var center:Point;

    /**
     * The radius of the circle of effect.
     */
    public var radius:Float;

    /**
     * The strength of the effect. -1 to 1 (-1 is strong pinch, 0 is no effect, 1 is strong bulge)
     */
    public var strength:Float;
}

/**
 * The options of BulgePinchFilter.
 */
typedef BulgePinchFilterOptions =
{
    /**
     * The x and y coordinates of the center of the circle of effect.  
     * Default: `[0,0]`
     */
    @:optional var center:EitherType<Point,Array<Float>>;

    /**
     * The radius of the circle of effect.  
     * Default: `100`
     */
    @:optional var radius:Float;

    /**
     * 1 to 1 (-1 is strong pinch, 0 is no effect, 1 is strong bulge)  
     * Default: `1`
     */
    @:optional var strength:Float;
}