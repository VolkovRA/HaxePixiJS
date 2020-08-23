package pixi.filters;

import haxe.extern.EitherType;

/**
 * A much faster blur than Gaussian blur, but more complicated to use.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.KawaseBlurFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_kawase-blur_src_KawaseBlurFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.KawaseBlurFilter")
extern class KawaseBlurFilter extends Filter
{
    /**
     * Create a new KawaseBlurFilter instance.
     * @param blur The blur of the filter. Should be greater than `0`. If value is
     *             an Array, setting kernels.  
     *             Default: `4`
     * @param quality The quality of the filter. Should be an integer greater than 1.  
     *                Default: `3`
     * @param clamp Clamp edges, useful for removing dark edges from fullscreen filters
     *              or bleeding to the edge of filterArea.  
     *              Default: `false`
     */
    public function new(?blur:EitherType<Float,Array<Float>>, ?quality:Float, ?clamp:Bool);

    /**
     * The amount of blur, value greater than 0.  
     * Can be:
     * - Float.
     * - Array[Float]
     * 
     * Default: `4`
     */
    public var blur:Dynamic;

    /**
     * Get the if the filter is clampped.  
     * Default: `false`
     */
    public var clamp(default, null):Bool;

    /**
     * The kernel size of the blur filter, for advanced usage.  
     * Default: `[0]`
     */
    public var kernels:Array<Float>;

    /**
     * Sets the pixel size of the filter. Large size is blurrier. For advanced usage.  
     * Can be:
     * - Point.
     * - Array[Float]
     * 
     * Default: `[1,1]`
     */
    public var pixelSize:Dynamic;

    /**
     * The quality of the filter, integer greater than `1`.  
     * Default: `3`
     */
    public var quality:Float;
}