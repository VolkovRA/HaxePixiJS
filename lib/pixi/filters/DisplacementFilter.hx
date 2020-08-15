package pixi.filters;

import pixi.display.Sprite;
import pixi.enums.ClearMode;
import pixi.geom.Point;
import pixi.textures.Texture;
import pixi.textures.RenderTexture;
import pixi.render.systems.FilterSystem;

/**
 * The DisplacementFilter class uses the pixel values from the specified
 * texture (called the displacement map) to perform a displacement of an
 * object.
 * 
 * You can use this filter to apply all manor of crazy warping effects.
 * Currently the r property of the texture is used to offset the `x` and
 * the `g` property of the texture is used to offset the `y`.
 * 
 * The way it works is it uses the values of the displacement map to
 * look up the correct pixels to output. This means it's not technically
 * moving the original. Instead, it's starting at the output and asking
 * "which pixel from the original goes here". For example, if a
 * displacement map pixel has `red = 1` and the filter scale is `20`, this
 * filter will output the pixel approximately 20 pixels to the right of
 * the original.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.filters.DisplacementFilter.html
 * @see Source code: http://pixijs.download/release/docs/packages_filters_filter-displacement_src_DisplacementFilter.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.filters.DisplacementFilter")
extern class DisplacementFilter extends Filter
{
    /**
     * Create a new DisplacementFilter instance.
     * @param sprite The sprite used for the displacement map. (make sure its added to the scene!)
     * @param scale The scale of the displacement.
     */
    public function new(sprite:Sprite, ?scale:Float);

    /**
     * The texture used for the displacement map.
     * Must be power of 2 sized texture.
     */
    public var map:Texture;

    /**
     * scaleX, scaleY for displacements.
     */
    public var scale:Point;

    /**
     * Applies the filter.
     * @param filterManager The manager.
     * @param input The input target.
     * @param output The output target.
     * @param clearMode How to clear
     */
    override public function apply(filterManager:FilterSystem, input:RenderTexture, output:RenderTexture, clearMode:ClearMode, ?currentState:Dynamic):Void;
}