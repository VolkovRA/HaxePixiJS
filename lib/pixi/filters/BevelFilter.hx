package pixi.filters;

/**
 * Bevel Filter.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.BevelFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_bevel_src_BevelFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.BevelFilter")
extern class BevelFilter extends Filter
{
    /**
     * Create a new BevelFilter instance.
     * @param options The optional parameters of the filter.
     */
    public function new(?options:BevelFilterOptions);

    /**
     * Alpha of the light.  
     * Default: `0.7`
     */
    public var lightAlpha:Float;

    /**
     * Color of the light.  
     * Default: `0xFFFFFF`
     */
    public var lightColor:Int;

    /**
     * The angle of the light in degrees.  
     * Default: `45`
     */
    public var rotation:Float;

    /**
     * Alpha of the shadow.  
     * Default: `0.7`
     */
    public var shadowAlpha:Float;

    /**
     * Color of the shadow.  
     * Default: `0x000000`
     */
    public var shadowColor:Int;

    /**
     * The tickness of the bevel.  
     * Default: `2`
     */
    public var thickness:Float;
}

/**
 * The options of BevelFilter.
 */
typedef BevelFilterOptions =
{
    /**
     * The angle of the light in degrees.  
     * Default: `45`
     */
    @:optional var rotation:Float;

    /**
     * The tickness of the bevel.  
     * Default: `2`
     */
    @:optional var thickness:Float;

    /**
     * Color of the light.  
     * Default: `0xFFFFFF`
     */
    @:optional var lightColor:Int;

    /**
     * Alpha of the light.  
     * Default: `0.7`
     */
    @:optional var lightAlpha:Float;

    /**
     * Color of the shadow.  
     * Default: `0x000000`
     */
    @:optional var shadowColor:Int;

    /**
     * Alpha of the shadow.  
     * Default: `0.7`
     */
    @:optional var shadowAlpha:Float;
}