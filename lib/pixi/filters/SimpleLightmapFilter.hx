package pixi.filters;

import haxe.extern.EitherType;
import pixi.textures.Texture;

/**
 * The RadialBlurFilter applies a Motion blur to an object.
 * 
 * Example:
 * ```
 * displayObject.filters = [new SimpleLightmapFilter(texture, 0x666666)];
 * ```
 * 
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.SimpleLightmapFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_simple-lightmap_src_SimpleLightmapFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.SimpleLightmapFilter")
extern class SimpleLightmapFilter extends Filter
{
    /**
     * Create a new SimpleLightmapFilter instance.
     * @param texture A texture where your lightmap is rendered.
     * @param color An RGBA array of the ambient color.  
     *              Default: `0x000000`
     * @param alpha Default alpha set independent of color (if it's a number, not array).  
     *              Default: `1`
     */
    public function new(texture:Texture, ?color:EitherType<Int,Array<Float>>, ?alpha:Float);

    /**
     * When setting `color` as hex, this can be used to set alpha independently.
     */
    public var alpha:Float;

    /**
     * An RGBA array of the ambient color or a hex color without alpha.  
     * Can be:
     * - Int.
     * - Array[Float].
     */
    public var color:Dynamic;

    /**
     * A texture where your lightmap is rendered.
     */
    public var texture:Texture;
}