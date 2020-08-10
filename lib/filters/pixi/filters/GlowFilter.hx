package pixi.filters;

import pixi.core.renderers.webgl.filters.Filter;

/**
 * GlowFilter, originally by mishaa codepen.
 * @see https://pixijs.io/pixi-filters/docs/PIXI.filters.GlowFilter.html
 * @see https://codepen.io/mishaa/pen/raKzrm
 */
@:native("PIXI.filters.GlowFilter")
extern class GlowFilter extends Filter
{
	/**
	 * Create a new GlowFilter.
     * @param options Options for filter.
     */
    function new(options:GlowFilterParams);

    /**
     * The color of the glow.
     * 
     * Default: `0xFFFFFF`
     */
    public var color:Int;

    /**
     * Only draw the glow, not the texture itself.
     * 
     * Default: `false`
     */
    public var knockout:Bool;

    /**
     * The strength of the glow outward from the edge of the sprite.
     * 
     * Default: `4`
     */
    public var outerStrength:Float;
    
    /**
     * The strength of the glow inward from the edge of the sprite.
     * 
     * Default: `0`
     */
    public var innerStrength:Float;
}

/**
 * The options of filter.
 */
typedef GlowFilterParams =
{
    /**
     * The distance of the glow.
     * Make it 2 times more for resolution=2. It can't be changed after filter creation.
     * 
     * Default: `10`
     */
    @:optional var distance:Float;

    /**
     * The strength of the glow outward from the edge of the sprite.
     * 
     * Default: `4`
     */
    @:optional var outerStrength:Float;

    /**
     * The strength of the glow inward from the edge of the sprite.
     * 
     * Default: `0`
     */
    @:optional var innerStrength:Float;

    /**
     * The color of the glow.
     * 
     * Default: `0xffffff`
     */
    @:optional var color:Int;

    /**
     * A number between 0 and 1 that describes the quality of the glow.
     * The higher the number the less performant.
     * 
     * Default: `0.1`
     */
    @:optional var quality:Float;

    /**
     * Toggle to hide the contents and only show glow.
     * 
     * Default: `false`
     */
    @:optional var knockout:Bool;
}