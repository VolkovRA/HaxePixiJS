package pixi.geom;

/**
 * RopeGeometry allows you to draw a geometry across several points
 * and then manipulate these points.
 * ```
 * for (var i = 0; i < 20; i++) {
 *     points.push(new Point(i * 50, 0));
 * };
 * var rope = new RopeGeometry(100, points);
 * ```
 * @see Documentation: http://pixijs.download/release/docs/PIXI.RopeGeometry.html
 * @see Source code: http://pixijs.download/release/docs/packages_mesh-extras_src_geometry_RopeGeometry.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.RopeGeometry")
extern class RopeGeometry extends MeshGeometry
{
    /**
     * Create a new RopeGeometry instance.
     * @param width The width (i.e., thickness) of the rope. Default: `200`
     * @param points An array of [Point](http://pixijs.download/release/docs/PIXI.Point.html)
     *               objects to construct this rope.
     * @param textureScale By default the rope texture will be stretched to match rope length.
     *                     If textureScale is positive this value will be treated as a scaling
     *                     factor and the texture will preserve its aspect ratio instead. To
     *                     create a tiling rope set baseTexture.wrapMode to PIXI.WRAP_MODES.REPEAT
     *                     and use a power of two texture, then set textureScale=1 to keep the
     *                     original texture pixel size. In order to reduce alpha channel artifacts
     *                     provide a larger texture and downsample - i.e. set textureScale=0.5 to
     *                     scale it down twice. Default: `0`
     */
    public function new(?width:Float, ?points:Array<Point>, ?textureScale:Float);

    /**
     * The width (i.e., thickness) of the rope.
     */
    public var _width(default, null):Float;

    /**
     * An array of points that determine the rope.
     */
    public var points:Array<Point>;

    /**
     * Rope texture scale, if zero then the rope texture is stretched.
     */
    public var textureScale(default, null):Float;

    /**
     * The width (i.e., thickness) of the rope.
     */
    public var width(default, null):Float;

    /**
     * Refreshes vertices of Rope mesh.
     */
    public function updateVertices():Void;
}