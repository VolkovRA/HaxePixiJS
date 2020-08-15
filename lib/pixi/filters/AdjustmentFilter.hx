package pixi.filters;

/**
 * The ability to adjust gamma, contrast, saturation, brightness, alpha
 * or color-channel shift. This is a faster and much simpler to use than
 * ColorMatrixFilter because it does not use a matrix.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.AdjustmentFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_adjustment_src_AdjustmentFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.AdjustmentFilter")
extern class AdjustmentFilter extends Filter
{
    /**
     * Create a new AdjustmentFilter instance.
     * @param options The optional parameters of the filter.
     */
    function new(?options:AdjustmentFilterOptions);

    /**
     * The amount of alpha channel.  
     * Default: `1`
     */
    public var alpha:Float;

    /**
     * The amount of blue channel.  
     * Default: `1`
     */
    public var blue:Float;

    /**
     * The amount of brightness.  
     * Default: `1`
     */
    public var brightness:Float;

    /**
     * The amount of contrast.  
     * Default: `1`
     */
    public var contrast:Float;

    /**
     * The amount of luminance.  
     * Default: `1`
     */
    public var gamma:Float;

    /**
     * The amount of green channel.  
     * Default: `1`
     */
    public var green:Float;

    /**
     * The amount of red channel.  
     * Default: `1`
     */
    public var red:Float;

    /**
     * The amount of saturation.  
     * Default: `1`
     */
    public var saturation:Float;
}

/**
 * The options of AdjustmentFilter.
 * ***
 * Library: **filters** 
 */
typedef AdjustmentFilterOptions = 
{
    /**
     * The amount of luminance.  
     * Default: `1`
     */
    @:optional var gamma:Float;

    /**
     * The amount of color saturation.  
     * Default: `1`
     */
    @:optional var saturation:Float;

    /**
     * The amount of contrast.  
     * Default: `1`
     */
    @:optional var contrast:Float;

    /**
     * The overall brightness.  
     * Default: `1`
     */
    @:optional var brightness:Float;

    /**
     * The multipled red channel.  
     * Default: `1`
     */
    @:optional var red:Float;

    /**
     * The multipled green channel.  
     * Default: `1`
     */
    @:optional var green:Float;

    /**
     * The multipled blue channel.  
     * Default: `1`
     */
    @:optional var blue:Float;

    /**
     * The overall alpha amount.  
     * Default: `1`
     */
    @:optional var alpha:Float;
}