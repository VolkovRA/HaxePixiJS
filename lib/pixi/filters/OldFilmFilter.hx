package pixi.filters;

import haxe.extern.EitherType;

/**
 * The OldFilmFilter applies a Old film effect to an object.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.OldFilmFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_old-film_src_OldFilmFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.OldFilmFilter")
extern class OldFilmFilter extends Filter
{
    /**
     * Create a new OldFilmFilter instance.
     * @param options The optional parameters of old film effect. When options is a number , it will be `seed`.
     * @param seed A see value to apply to the random noise generation.  
     *             Default: `0`
     */
    public function new(?options:EitherType<Float,OldFilmFilterOptions>, ?seed:Float);

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
     * How often scratches appear.  
     * Default: `0`
     */
    public var scratch:Float;

    /**
     * The density of the number of scratches.  
     * Default: `0`
     */
    public var scratchDensity:Float;

    /**
     * The width of the scratches.  
     * Default: `0`
     */
    public var scratchWidth:Float;

    /**
     * A see value to apply to the random noise generation.
     */
    public var seed:Float;

    /**
     * The amount of saturation of sepia effect, a value of `1` is more saturation
     * and closer to `0` is less, and a value of `0` produces no sepia effect.  
     * Default: `0`
     */
    public var sepia:Float;

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
 * The options of OldFilmFilter.
 */
typedef OldFilmFilterOptions =
{
    /**
     * The amount of saturation of sepia effect, a value of `1` is more saturation
     * and closer to `0` is less, and a value of `0` produces no sepia effect.  
     * Default: `0.3`
     */
    @:optional var sepia:Float;

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
     * How often scratches appear.  
     * Default: `0.5`
     */
    @:optional var scratch:Float;

    /**
     * The density of the number of scratches.  
     * Default: `0.3`
     */
    @:optional var scratchDensity:Float;

    /**
     * The width of the scratches.  
     * Default: `1.0`
     */
    @:optional var scratchWidth:Float;

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
}