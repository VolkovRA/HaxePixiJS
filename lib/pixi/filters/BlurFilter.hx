package pixi.filters;

import pixi.enums.ClearMode;
import pixi.enums.BlendMode;
import pixi.textures.RenderTexture;
import pixi.render.systems.FilterSystem;

/**
 * The BlurFilter applies a Gaussian blur to an object.  
 * The strength of the blur can be set for the x-axis and y-axis separately.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.filters.BlurFilter.html
 * @see Source code: http://pixijs.download/release/docs/packages_filters_filter-blur_src_BlurFilter.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.filters.BlurFilter")
extern class BlurFilter extends Filter
{
    /**
     * Create a new BlurFilter instance.
     * @param strength The strength of the blur filter. Default: `8`
     * @param quality The quality of the blur filter. Default: `4`
     * @param resolution The resolution of the blur filter. Default: `1`
     * @param kernelSize The kernelSize of the blur filter.Options: 5, 7, 9, 11, 13, 15. Default: `5`
     */
    public function new(strength:Float, quality:Float, resolution:Float, kernelSize:Float);

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

    /**
     * Sets the number of passes for blur. More passes means higher quaility bluring.  
     * Default: `1`
     */
    public var quality:Float;

    /**
     * If set to true the edge of the target will be clamped.  
     * Default: `false`
     */
    public var repeatEdgePixels:Bool;

    /**
     * Applies the filter.
     * @param filterManager The manager.
     * @param input The input target.
     * @param output The output target.
     * @param clearMode How to clear.
     */
    override public function apply(filterManager:FilterSystem, input:RenderTexture, output:RenderTexture, clearMode:ClearMode):Void;
}