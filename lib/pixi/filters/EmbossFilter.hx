package pixi.filters;

/**
 * An RGB Split Filter.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.EmbossFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_emboss_src_EmbossFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.EmbossFilter")
extern class EmbossFilter extends Filter
{
    /**
     * Create a new EmbossFilter instance.
     * @param strength Strength of the emboss.  
     *                 Default: `5`
     */
    public function new(?strength:Float);

    /**
     * Strength of emboss.
     */
    public var strength:Float;
}