package pixi.geom;

/**
 * Draw a star shape with an arbitrary number of points.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.graphicsUtils.Star.html
 * @see Source code: http://pixijs.download/release/docs/packages_graphics_src_utils_Star.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.graphicsUtils.Star")
extern class Star extends Polygon 
{
    /**
     * Create a new Star polygon instance.
     * @param x Center X position of the star.
     * @param y Center Y position of the star.
     * @param points The number of points of the star, must be > 1.
     * @param radius The outer radius of the star.
     * @param innerRadius The inner radius between points, default half `radius`.
     * @param rotation The rotation of the star in radians, where 0 is vertical. Default: `0`
     */
    public function new(x:Float, y:Float, points:Float, radius:Float, ?innerRadius:Float, ?rotation:Float);
}