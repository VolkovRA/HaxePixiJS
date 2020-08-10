package pixi.filters.extras;

import pixi.core.renderers.webgl.filters.Filter;

@:native("PIXI.filters.GlowFilter")
extern class GlowFilter extends Filter {
	/**
	 * GlowFilter.
     */
    @:overload(function(distance:Float, outerStrength:Float, innerStrength:Float, color:Int, quality:Float):GlowFilter {}) // <-- Maybe not supported
    function new(params:GlowFilterParams);

	var color:Int;
	var outerStrength:Float;
	var innerStrength:Float;
}

/**
 * The options of glow filter.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.GlowFilter.html
 */
typedef GlowFilterParams =
{
    /**
     * The distance of the glow.
     * Make it 2 times more for resolution=2. It can't be changed after filter creation.
     * @default `10`
     */
    @:optional var distance:Float;

    /**
     * The strength of the glow outward from the edge of the sprite.
     * @default `4`
     */
    @:optional var outerStrength:Float;

    /**
     * The strength of the glow inward from the edge of the sprite.
     * @default `0`
     */
    @:optional var innerStrength:Float;

    /**
     * The color of the glow.
     * @default `0xffffff`
     */
    @:optional var color:Int;

    /**
     * A number between 0 and 1 that describes the quality of the glow.
     * The higher the number the less performant.
     * @default `0.1`
     */
    @:optional var quality:Float;

    /**
     * Toggle to hide the contents and only show glow.
     * @default `false`
     */
    @:optional var knockout:Bool;
}