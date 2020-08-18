package pixi.filters;

import pixi.enums.ClearMode;
import pixi.render.systems.FilterSystem;
import pixi.textures.RenderTexture;

/**
 * The BlurFilterPass applies a horizontal or vertical Gaussian blur to an object.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.filters.BlurFilterPass.html
 * @see Source code: http://pixijs.download/release/docs/packages_filters_filter-blur_src_BlurFilterPass.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.filters.BlurFilterPass")
extern class BlurFilterPass extends Filter
{
    /**
     * Create a new BlurFilterPass instance.
     * @param horizontal Do pass along the x-axis (`true`) or y-axis (`false`).
     * @param strength The strength of the blur filter. Default: `8`
     * @param quality The quality of the blur filter. Default: `4`
     * @param resolution The resolution of the blur filter. Default: `1`
     * @param kernelSize The kernelSize of the blur filter.Options: 5, 7, 9, 11, 13, 15. Default: `5`
     */
    public function new(horizontal:Bool, ?strength:Float, ?quality:Float, ?resolution:Float, ?kernelSize:Float);

    /**
     * Sets the strength of both the blur.  
     * Default: `16`
     */
    public var blur:Float;

    /**
     * Sets the quality of the blur by modifying the number of passes. More
     * passes means higher quaility bluring but the lower the performance.  
     * Default: `4`
     */
    public var quality:Float;

    /**
     * Applies the filter.
     * @param filterManager The manager.
     * @param input The input target.
     * @param output The output target.
     * @param clearMode How to clear
     */
    override public function apply(filterManager:FilterSystem, input:RenderTexture, output:RenderTexture, clearMode:ClearMode, ?currentState:Dynamic):Void;
}