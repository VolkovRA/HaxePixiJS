package pixi.filters;

import pixi.geom.Point;

/**
 * This filter applies a twist effect making display objects appear twisted in the given direction.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.TwistFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_twist_src_TwistFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.TwistFilter")
extern class TwistFilter extends Filter
{
    /**
     * Create a new TwistFilter instance.
     * @param radius The radius of the twist.  
     *               Default: `200`
     * @param angle The angle of the twist.  
     *              Default: `4`
     * @param padding Padding for filter area.  
     *                Default: `20`
     */
    public function new(?radius:Float, ?angle:Float, ?padding:Float);

    /**
     * The angle of the twist.
     */
    public var angle:Float;

    /**
     * This point describes the the offset of the twist.
     */
    public var offset:Point;

    /**
     * The radius of the twist.
     */
    public var radius:Float;
}