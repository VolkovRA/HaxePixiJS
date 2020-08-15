package pixi.filters;

/**
 * Simplest filter - applies alpha.
 * 
 * Use this instead of Container's alpha property to avoid visual layering of
 * individual elements. AlphaFilter applies alpha evenly across the entire
 * display object and any opaque elements it contains. If elements are not
 * opaque, they will blend with each other anyway.
 * 
 * Very handy if you want to use common features of all filters:
 * 1. Assign a blendMode to this filter, blend all elements inside display
 *    object with background.
 * 2. To use clipping in display coordinates, assign a filterArea to the same
 *    container that has this filter.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.filters.AlphaFilter.html
 * @see Source code: http://pixijs.download/release/docs/packages_filters_filter-alpha_src_AlphaFilter.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.filters.AlphaFilter")
extern class AlphaFilter extends Filter
{
    /**
     * Create a new AlphaFilter instance.
     * @param alpha Amount of alpha from 0 to 1, where 0 is transparent. Default: `1`
     */
    public function new(alpha:Float);

    /**
     * Coefficient for alpha multiplication.  
     * Default: `1`
     */
    public var alpha:Float;
}