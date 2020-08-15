package pixi.filters;

/**
 * Basic FXAA (Fast Approximate Anti-Aliasing) implementation based
 * on the code on geeks3d.com with the modification that the
 * texture2DLod stuff was removed since it is unsupported by WebGL.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.filters.FXAAFilter.html
 * @see Source code: http://pixijs.download/release/docs/packages_filters_filter-fxaa_src_FXAAFilter.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.filters.FXAAFilter")
extern class FXAAFilter extends Filter
{
    /**
     * Create a new FXAAFilter instance.
     */
    public function new();
}