package pixi.filters;

import haxe.extern.EitherType;
import pixi.geom.Point;

/**
 * The ZoomFilter applies a Zoom blur to an object.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.ZoomBlurFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_zoom-blur_src_ZoomBlurFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.ZoomBlurFilter")
extern class ZoomBlurFilter extends Filter
{
    /**
     * Create a new ZoomBlurFilter instance.
     * @param options Filter options to use.
     */
    public function new(?options:ZoomBlurFilterOptions);

    /**
     * Center of the effect.  
     * Default: `[0,0]`
     */
    public var center:EitherType<Point, Array<Float>>;

    /**
     * Radius of the inner region not effected by blur.  
     * Default: `0`
     */
    public var innerRadius:Float;

    /**
     * Outer radius of the effect. The default value is `-1`. `< 0.0` means it's infinity.  
     * Default: `-1`
     */
    public var radius:Float;

    /**
     * Intensity of the zoom effect.  
     * Default: `0.1`
     */
    public var strength:Float;
}

/**
 * The options of ZoomBlurFilter.
 */
typedef ZoomBlurFilterOptions =
{
    /**
     * Sets the strength of the zoom blur effect.  
     * Default: `0.1`
     */
    @:optional var strength:Float;

    /**
     * The center of the zoom.  
     * Default: `[0,0]`
     */
    @:optional var center:EitherType<Point, Array<Float>>;

    /**
     * The inner radius of zoom. The part in inner circle won't apply zoom blur effect.  
     * Default: `0`
     */
    @:optional var innerRadius:Float;

    /**
     * See `radius` property.  
     * Default: `-1`
     */
    @:optional var radius:Float;
}