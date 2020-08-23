package pixi.filters;

/**
 * The AdvancedBloomFilter applies a Bloom Effect to an object.
 * Unlike the normal BloomFilter this had some advanced controls for
 * adjusting the look of the bloom. Note: this filter is slower than
 * normal BloomFilter.
 * 
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.AdvancedBloomFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_advanced-bloom_src_AdvancedBloomFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.AdvancedBloomFilter")
extern class AdvancedBloomFilter extends Filter
{
    /**
     * Create a new AdvancedBloomFilter instance.
     * @param options The optional parameters of advanced bloom filter.
     *                When options is a number , it will be options.threshold.
     */
    public function new(?options:AdvancedBloomFilterOptions);

    /**
     * To adjust the strength of the bloom. Higher values is more intense brightness.  
     * Default: `1.0`
     */
    public var bloomScale:Float;

    /**
     * Sets the strength of the Blur properties simultaneously.  
     * Default: `2`
     */
    public var blur:Float;

    /**
     * The brightness, lower value is more subtle brightness, higher value is blown-out.  
     * Default: `1.0`
     */
    public var brightness:Float;

    /**
     * Sets the kernels of the Blur Filter.  
     * Default: `4`
     */
    public var kernels:Float;

    /**
     * Sets the pixelSize of the Kawase Blur filter.  
     * Can be:
     * - Float.
     * - Array[Float].
     * - Point.
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
     * Defines how bright a color needs to be to affect bloom.  
     * Default: `0.5`
     */
    public var threshold:Float;
}

/**
 * The options of AdvancedBloomFilter.
 */
typedef AdvancedBloomFilterOptions =
{
    /**
     * Defines how bright a color needs to be to affect bloom.  
     * Default: `0.5`
     */
    @:optional var threshold:Float;

    /**
     * To adjust the strength of the bloom. Higher values is more intense brightness.  
     * Default: `1.0`
     */
    @:optional var bloomScale:Float;

    /**
     * The brightness, lower value is more subtle brightness, higher value is blown-out.  
     * Default: `1.0`
     */
    @:optional var brightness:Float;

    /**
     * Sets the strength of the Blur properties simultaneously.  
     * Default: `8`
     */
    @:optional var blur:Float;

    /**
     * The quality of the Blur filter.  
     * Default: `4`
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
     * - Array[Float].
     * - Point.
     * 
     * Default: `1`
     */
    public var pixelSize:Dynamic;

    /**
     * The resolution of the Blur filter.  
     * Default: `Settings.RESOLUTION`
     */
    @:optional var resolution:Float;
}