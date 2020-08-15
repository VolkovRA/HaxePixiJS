package pixi.filters;

import haxe.extern.EitherType;
import pixi.geom.Point;

/**
 * The RadialBlurFilter applies a Motion blur to an object.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.RadialBlurFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_radial-blur_src_RadialBlurFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.RadialBlurFilter")
extern class RadialBlurFilter extends Filter
{
    /**
     * Create a new RadialBlurFilter instance.
     * @param angle Sets the angle of the motion for blur effect.  
     *              Default: `0`
     * @param center The center of the radial.  
     *               Default: `[0,0]`
     * @param kernelSize The kernelSize of the blur filter. But be odd number >= 3.  
     *                   Default: `5`
     * @param radius The maximum size of the blur radius, -1 is infinite.  
     *               Default: `-1`
     */
    function new(?angle:Float, ?center:EitherType<Point,Array<Float>>, ?kernelSize:Float, ?radius:Float);

    /**
     * Sets the angle in degrees of the motion for blur effect.  
     * Default: `0`
     */
    public var angle:Float;

    /**
     * Center of the effect.  
     * Default: `[0,0]`
     */
    public var center:EitherType<Point,Array<Float>>;

    /**
     * Outer radius of the effect. The default value of `-1` is infinite.  
     * Default: `-1`
     */
    public var radius:Float;
}