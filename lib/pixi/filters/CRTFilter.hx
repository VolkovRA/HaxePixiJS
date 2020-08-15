package pixi.filters;

/**
 * The CRTFilter applies a CRT effect to an object.
 * 
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.CRTFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_crt_src_CRTFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.CRTFilter")
extern class CRTFilter extends Filter
{
    /**
     * Create a new CRTFilter instance.
     * @param options The optional parameters of CRT effect.
     */
    public function new(?options:CRTFilterOptions);

    /**
     * Bent of interlaced lines, higher value means more bend.  
     * Default: `1`
     */
    public var curvature:Float;

    /**
     * Contrast of interlaced lines.  
     * Default: `0.25`
     */
    public var lineContrast:Float;

    /**
     * Width of interlaced lines.  
     * Default: `1`
     */
    public var lineWidth:Float;

    /**
     * Opacity/intensity of the noise effect between `0` and `1`.  
     * Default: `0`
     */
    public var noise:Float;

    /**
     * The size of the noise particles.  
     * Default: `0`
     */
    public var noiseSize:Float;

    /**
     * A seed value to apply to the random noise generation.  
     * Default: `0`
     */
    public var seed:Float;

    /**
     * For animating interlaced lines.  
     * Default: `0`
     */
    public var time:Float;

    /**
     * `true` for vertical lines, `false` for horizontal lines.  
     * Default: `false`
     */
    public var verticalLine:Bool;

    /**
     * The radius of the vignette effect, smaller values produces a smaller vignette.  
     * Default: `0`
     */
    public var vignetting:Float;

    /**
     * Amount of opacity of vignette.  
     * Default: `0`
     */
    public var vignettingAlpha:Float;

    /**
     * Blur intensity of the vignette.  
     * Default: `0`
     */
    public var vignettingBlur:Float;
}

/**
 * The options of CRTFilter.
 */
typedef CRTFilterOptions =
{
    /**
     * Bent of interlaced lines, higher value means more bend.  
     * Default: `1.0`
     */
    @:optional var curvature:Float;

    /**
     * Width of the interlaced lines.  
     * Default: `1.0`
     */
    @:optional var lineWidth:Float;

    /**
     * Contrast of interlaced lines.  
     * Default: `0.25`
     */
    @:optional var lineContrast:Flota;

    /**
     * `true` is vertical lines, `false` is horizontal.  
     * Default: `false`
     */
    @:optional var verticalLine:Bool;

    /**
     * Opacity/intensity of the noise effect between `0` and `1`.  
     * Default: `0.3`
     */
    @:optional var noise:Float;

    /**
     * The size of the noise particles.  
     * Default: `1.0`
     */
    @:optional var noiseSize:Float;

    /**
     * A seed value to apply to the random noise generation.  
     * Default: `0`
     */
    @:optional var seed:Float;

    /**
     * The radius of the vignette effect, smaller values produces a smaller vignette.  
     * Default: `0.3`
     */
    @:optional var vignetting:Float;

    /**
     * Amount of opacity of vignette.  
     * Default: `1.0`
     */
    @:optional var vignettingAlpha:Float;

    /**
     * Blur intensity of the vignette.  
     * Default: `0.3`
     */
    @:optional var vignettingBlur:Float;

    /**
     * For animating interlaced lines.  
     * Default: `0`
     */
    @:optional var time:Float;
}