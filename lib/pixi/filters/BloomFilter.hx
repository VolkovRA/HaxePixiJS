package pixi.filters;

import haxe.extern.EitherType;
import pixi.geom.Point;

/**
 * The BloomFilter applies a Gaussian blur to an object. The strength
 * of the blur can be set for x- and y-axis separately.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.BloomFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_bloom_src_BloomFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.BloomFilter")
extern class BloomFilter extends Filter
{
    /**
     * Create a new BloomFilter instance.
     * @param blur Sets the strength of both the blurX and blurY properties simultaneously.  
     *             Default: `2`
     * @param quality The quality of the blurX & blurY filter.  
     *                Default: `4`
     * @param resolution The resolution of the blurX & blurY filter.  
     *                   Default: `Settings.RESOLUTION`
     * @param kernelSize The kernelSize of the blurX & blurY filter.Options: 5, 7, 9, 11, 13, 15.  
     *                   Default: `5`
     */
    public function new(?blur:EitherType<Float,EitherType<Point,Array<Float>>>, ?quality:Float, ?resolution:Float, ?kernelSize:Float);

    /**
     * Sets the strength of both the blurX and blurY properties simultaneously.  
     * Default: `2`
     */
    public var blur:Float;

    /**
     * Sets the strength of the blurX property.  
     * Default: `2`
     */
    public var blurX:Float;

    /**
     * Sets the strength of the blurY property.  
     * Default: `2`
     */
    public var blurY:Float;
}