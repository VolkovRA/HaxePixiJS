package pixi.geom;

import haxe.extern.EitherType;
import pixi.enums.GLDataType;
import pixi.render.Attribute;
import pixi.utils.Buffer;

/**
 * The Geometry represents a model. It consists of two components:
 * 1. GeometryStyle - The structure of the model such as the attributes layout.
 * 2. GeometryData - the data of the model - this consists of buffers. This can
 *    include anything from positions, uvs, normals, colors etc.
 * 
 * Geometry can be defined without passing in a style or data if required (thats how I prefer!)
 * ```
 * var geometry = new Geometry();
 * geometry.addAttribute('positions', [0, 0, 100, 0, 100, 100, 0, 100], 2);
 * geometry.addAttribute('uvs', [0,0,1,0,1,1,0,1],2)
 * geometry.addIndex([0,1,2,1,3,2])
 * ```
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Geometry.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_geometry_Geometry.js.html#line38
 * ***
 * Library: **core** 
 */
@:native("PIXI.Geometry")
extern class Geometry
{
    /**
     * Create a new Geometry instance.
     * @param buffers An array of buffers.
     * @param attributes Of the geometry, optional structure of the attributes layout.
     */
    public function new(?buffers:Array<Buffer>, ?attributes:Dynamic);

    /**
     * A map of renderer IDs to webgl VAOs.
     */
    private var glVertexArrayObjects:Dynamic;

    /**
     * Number of instances in this geometry, pass it to `GeometrySystem.draw()`.  
     * Default: `1`
     */
    public var instanceCount:Int;

    /**
     * Count of existing (not destroyed) meshes that reference this geometry.
     */
    public var refCount:Int;

    /**
     * Merges an array of geometries into a new single one geometry attribute styles
     * must match for this operation to work.
     * @param geometries Array of geometries to merge.
     * @return Shiny new geometry!
     */
    static public function merge(geometries:Geometry):Geometry;

    /**
     * Adds an attribute to the geometry Note: `stride` and `start` should be `undefined`
     * if you dont know them, not 0!
     * @param id The name of the attribute. (Matching up to a shader)
     * @param buffer The buffer that holds the data of the attribute.
     *               You can also provide an Array and a buffer will be created from it.
     * @param size The size of the attribute. If you have 2 floats per vertex (eg position x and y)
     *             this would be 2. Default: `2`
     * @param normalized Should the data be normalized. Default: `false`
     * @param type What type of number is the attribute. Check {PIXI.TYPES} to see the ones available.  
     *             Default: `GLDataType.FLOAT`
     * @param stride How far apart (in floats) the start of each value is. (used for interleaving data)
     * @param start How far into the array to start reading values. (used for interleaving data)
     * @param instance Instancing flag. Default: `false`
     * @return Returns self, useful for chaining.
     */
    public function addAttribute(   id:String,
                                    ?buffer:EitherType<Buffer,Array<Float>>,
                                    ?size:Int,
                                    ?normalized:Bool,
                                    ?type:GLDataType,
                                    ?stride:Float,
                                    ?start:Int,
                                    ?instance:Bool
    ):Geometry;

    /**
     * Adds an index buffer to the geometry The index buffer contains integers, three
     * for each triangle in the geometry, which reference the various attribute buffers
     * (position, colour, UV coordinates, other UV coordinates, normal, …). There is
     * only ONE index buffer.
     * @param buffer The buffer that holds the data of the index buffer. You can also
     *               provide an Array and a buffer will be created from it.
     * @return Returns self, useful for chaining.
     */
    public function addIndex(?buffer:EitherType<Buffer,Array<Float>>):Geometry;

    /**
     * Returns a clone of the geometry.
     * @return A new clone of this geometry.
     */
    public function clone():Geometry;

    /**
     * Destroys the geometry.
     */
    public function destroy():Void;

    /**
     * Disposes WebGL resources that are connected to this geometry.
     */
    public function dispose():Void;

    /**
     * Returns the requested attribute.
     * @param id The name of the attribute required.
     * @return The attribute requested.
     */
    public function getAttribute(id:String):Attribute;

    /**
     * Returns the requested buffer.
     * @param id The name of the buffer required.
     * @return The buffer requested.
     */
    public function getBuffer(id:String):Buffer;

    /**
     * Returns the index buffer.
     * @return The index buffer.
     */
    public function getIndex():Buffer;

    /**
     * This function modifies the structure so that all current attributes become interleaved
     * into a single buffer This can be useful if your model remains static as it offers a 
     * little performance boost.
     * @return Returns self, useful for chaining.
     */
    public function interleave():Geometry;
}