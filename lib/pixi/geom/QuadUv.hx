package pixi.geom;

import js.lib.Float32Array;

/**
 * Helper class to create a quad with uvs like in v4.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.QuadUv.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_utils_QuadUv.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.QuadUv")
extern class QuadUv extends Geometry
{
    /**
     * Create a new QuadUv instance.
     */
    public function new();

    /**
     * The Uvs of the quad.
     */
    public var uvs:Float32Array;

    /**
     * An array of vertices.
     */
    public var vertices:Float32Array;

    /**
     * Legacy upload method, just marks buffers dirty.
     * @return Returns itself.
     */
    public function invalidate():QuadUv;

    /**
     * Maps two Rectangle to the quad.
     * @param targetTextureFrame The first rectangle.
     * @param destinationFrame The second rectangle.
     * @return Returns itself.
     */
    public function map(targetTextureFrame:Rectangle, destinationFrame:Rectangle):Quad;
}