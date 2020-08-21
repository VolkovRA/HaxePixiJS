package pixi.geom;

import haxe.extern.EitherType;
import js.lib.Float32Array;
import js.lib.Uint16Array;

/**
 * Standard 2D geometry used in PixiJS.   
 * Geometry can be defined without passing in a style or data if required.
 * 
 * Example:
 * ```
 * var geometry = new Geometry();
 * geometry.addAttribute('positions', [0, 0, 100, 0, 100, 100, 0, 100], 2);
 * geometry.addAttribute('uvs', [0,0,1,0,1,1,0,1], 2);
 * geometry.addIndex([0,1,2,1,3,2]);
 * ```
 * @see Documentation: http://pixijs.download/release/docs/PIXI.MeshGeometry.html
 * @see Source code: http://pixijs.download/release/docs/packages_mesh_src_MeshGeometry.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.MeshGeometry")
extern class MeshGeometry extends Geometry
{
    /**
     * Create a new MeshGeometry instance.
     * @param vertices Positional data on geometry.
     * @param uvs Texture UVs.
     * @param index IndexBuffer.
     */
    public function new(?vertices:EitherType<Float32Array,Array<Float>>, ?uvs:EitherType<Float32Array,Array<Float>>, ?index:EitherType<Uint16Array,Array<Float>>);
}