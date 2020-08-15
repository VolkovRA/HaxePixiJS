package pixi.filters;

import haxe.extern.EitherType;
import pixi.geom.Point;

/**
 * The MotionBlurFilter applies a Motion blur to an object.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.MotionBlurFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_motion-blur_src_MotionBlurFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.MotionBlurFilter")
extern class MotionBlurFilter extends Filter
{
    /**
     * Create a new MotionBlurFilter instance.
     * @param velocity Sets the velocity of the motion for blur effect.  
     *                 Default: `[0,0]`
     * @param kernelSize The kernelSize of the blur filter. Must be odd number >= 5.  
     *                   Default: `5`
     * @param offset The offset of the blur filter.  
     *               Default: `0`
     */
    public function new(?velocity:EitherType<Array<Float>,IPoint>, ?kernelSize:Float, ?offset:Float);

    /**
     * The kernelSize of the blur, higher values are slower but look better.
     * Use odd value greater than 5.  
     * Default: `5`
     */
    public var kernelSize:Float;

    /**
     * The offset of the blur filter.  
     * Default: `0`
     */
    public var offset:Float;

    /**
     * Sets the velocity of the motion for blur effect.
     */
    public var velocity:EitherType<Array<Float>,IPoint>;
}