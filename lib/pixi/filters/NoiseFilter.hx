package pixi.filters;

/**
 * A Noise effect filter.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.filters.NoiseFilter.html
 * @see Source code: http://pixijs.download/release/docs/packages_filters_filter-noise_src_NoiseFilter.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.filters.NoiseFilter")
extern class NoiseFilter extends Filter
{
    /**
     * Create a new NoiseFilter instance.
     * @param noise The noise intensity, should be a normalized value in the range [0, 1]. Default: `0.5`
     * @param seed A random seed for the noise generation. Default is `Math.random()`.
     */
    public function new(?noise:Float, ?seed:Float);

    /**
     * The amount of noise to apply, this value should be in the range (0, 1].  
     * Default: `0.5`
     */
    public var noise:Float;

    /**
     * A seed value to apply to the random noise generation. Math.random() is a good value to use.  
     * Default: `Math.random()`
     */
    public var seed:Float;
}