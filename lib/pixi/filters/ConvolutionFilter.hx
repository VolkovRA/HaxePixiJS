package pixi.filters;

/**
 * The ConvolutionFilter class applies a matrix convolution filter effect.
 * A convolution combines pixels in the input image with neighboring pixels
 * to produce a new image. A wide variety of image effects can be achieved
 * through convolutions, including blurring, edge detection, sharpening,
 * embossing, and beveling. The matrix should be specified as a 9 point
 * Array. See http://docs.gimp.org/en/plug-in-convmatrix.html for more info.
 * 
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.ConvolutionFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_convolution_src_ConvolutionFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.ConvolutionFilter")
extern class ConvolutionFilter extends Filter
{
    /**
     * Create a new ConvolutionFilter instance.
     * @param matrix An array of values used for matrix transformation. Specified as a 9 point Array.  
     *               Default: `[0,0,0,0,0,0,0,0,0]`
     * @param width Width of the object you are transforming.  
     *              Default: `200`
     * @param height Height of the object you are transforming.  
     *               Default: `200`
     */
    public function new(?matrix:Array<Float>, ?width:Float, ?height:Float);

    /**
     * Width of the object you are transforming.
     */
    public var width:Float;

    /**
     * Height of the object you are transforming.
     */
    public var height:Float;

    /**
     * An array of values used for matrix transformation. Specified as a 9 point Array.
     */
    public var matrix:Array<Float>;
}