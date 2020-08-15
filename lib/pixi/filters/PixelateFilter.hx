package pixi.filters;

import haxe.extern.EitherType;
import pixi.geom.Point;

/**
 * This filter applies a pixelate effect making display objects appear 'blocky'.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.PixelateFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_pixelate_src_PixelateFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.PixelateFilter")
extern class PixelateFilter extends Filter
{
    /**
     * Create a new PixelateFilter instance.
     * @param size Either the width/height of the size of the pixels, or square size.  
     *             Default: `10`
     */
    public function new(?size:EitherType<Point,EitherType<Float,Array<Float>>>);

    /**
     * This a point that describes the size of the blocks. x is the width of the block and y is the height.  
     * Default: 10
     */
    public var size:EitherType<Point,EitherType<Float,Array<Float>>>;
}