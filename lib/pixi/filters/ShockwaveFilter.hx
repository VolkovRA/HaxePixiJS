package pixi.filters;

import haxe.extern.EitherType;
import pixi.geom.Point;

/**
 * The ShockwaveFilter class lets you apply a shockwave effect.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.ShockwaveFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_shockwave_src_ShockwaveFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.ShockwaveFilter")
extern class ShockwaveFilter extends Filter
{
    /**
     * Create a new ShockwaveFilter instance.
     * @param center See `center` property.  
     *               Default: `[0.5, 0.5]`
     * @param options The optional parameters of shockwave filter.
     * @param time See `time` property.  
     *             Default: `0`
     */
    public function new(?center:EitherType<Point,Array<Float>>, ?options:ShockwaveFilterOptions, ?time:Float);

    /**
     * The amplitude of the shockwave.
     */
    public var amplitude:Float;

    /**
     * The brightness of the shockwave.
     */
    public var brightness:Float;

    /**
     * Sets the center of the shockwave in normalized screen coords.
     * That is (0,0) is the top-left and (1,1) is the bottom right.  
     * Can be:
     * - Point.
     * - Array[Float].
     */
    public var center:Dynamic;

    /**
     * The maximum radius of shockwave. `< 0.0` means it's infinity.
     */
    public var radius:Float;

    /**
     * The speed about the shockwave ripples out. The unit is `pixel/second`.
     */
    public var speed:Float;

    /**
     * Sets the elapsed time of the shockwave. It could control the current size of shockwave.
     */
    public var time:Float;

    /**
     * The wavelength of the shockwave.
     */
    public var wavelength:Float;
}

/**
 * The options of ShockwaveFilter.
 */
typedef ShockwaveFilterOptions =
{
    /**
     * See `amplitude` property.  
     * Default: `0.5`
     */
    @:optional var amplitude:Float;

    /**
     * See `wavelength` property.  
     * Default: `1`
     */
    @:optional var wavelength:Float;

    /**
     * See `speed` property.  
     * Default: `500`
     */
    @:optional var speed:Float;

    /**
     * See `brightness` property.  
     * Default: `8`
     */
    @:optional var brightness:Float;

    /**
     * See `radius` property.  
     * Default: `4`
     */
    @:optional var radius:Float;
}