package pixi.filters;

/**
 * Drop shadow filter.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.DropShadowFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_drop-shadow_src_DropShadowFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.DropShadowFilter")
extern class DropShadowFilter extends Filter
{
	/**
	 * Create a new DropShadowFilter instance.
     * @param options Options for filter.
     */
    public function new(?options:DropShadowFilterOptions);

    /**
     * The alpha of the shadow.  
     * Default: `1`
     */
    public var alpha:Float;

    /**
     * The blur of the shadow.  
     * Default: `2`
     */
    public var blur:Float;

    /**
     * The color of the shadow.  
     * Default: `0x000000`
     */
    public var color:Int;

    /**
     * Distance offset of the shadow.  
     * Default: `5`
     */
    public var distance:Float;

    /**
     * Sets the kernels of the Blur Filter.
     */
    public var kernels:Array<Float>;

    /**
     * Sets the pixelSize of the Kawase Blur filter.  
     * Can be:
     * - Float.
     * - Point.
     * - Array[Float].
     * 
     * Default: `1`
     */
    public var pixelSize:Dynamic;

    /**
     * Sets the quality of the Blur Filter.  
     * Default: `4`
     */
    public var quality:Float;

    /**
     * The angle of the shadow in degrees.  
     * Default: `2`
     */
    public var rotation:Float;
}

/**
 * The options of DropShadowFilter.
 * ***
 * Library: **filters** 
 */
typedef DropShadowFilterOptions =
{
    /**
     * The angle of the shadow in degrees.  
     * Default: `45`
     */
    @:optional var rotation:Float;

    /**
     * Distance of shadow.  
     * Default: `5`
     */
    @:optional var distance:Float;

    /**
     * Color of the shadow.  
     * Default: `0x000000`
     */
    @:optional var color:Int;

    /**
     * Alpha of the shadow.  
     * Default: `0.5`
     */
    @:optional var alpha:Float;

    /**
     * Whether render shadow only.  
     * Default: `false`
     */
    @:optional var shadowOnly:Bool;

    /**
     * Sets the strength of the Blur properties simultaneously.  
     * Default: `2`
     */
    @:optional var blur:Float;

    /**
     * The quality of the Blur filter.  
     * Default: `3`
     */
    @:optional var quality:Float;

    /**
     * The kernels of the Blur filter.  
     * Default: `null`
     */
    @:optional var kernels:Array<Float>;

    /**
     * The pixelSize of the Blur filter.  
     * Can be:
     * - Float.
     * - Point.
     * - Array[Float].
     * 
     * Default: `1`
     */
    @:optional var pixelSize:Dynamic;

    /**
     * The resolution of the Blur filter.  
     * Default: `Settings.RESOLUTION`
     */
    @:optional var resolution:Float;
}