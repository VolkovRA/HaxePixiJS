package pixi.geom;

import pixi.geom.Point;

/**
 * 'Builder' pattern for bounds rectangles.  
 * This could be called an Axis-Aligned Bounding Box. It is not an actual shape.
 * It is a mutable thing; no 'EMPTY' or those kind of problems.
 * @see Documentation: https://pixijs.download/dev/docs/PIXI.Bounds.html
 * @see Source code: https://pixijs.download/dev/docs/packages_display_src_Bounds.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Bounds")
extern class Bounds 
{
    /**
     * Create a new Bounds instance.
     */
    public function new();

    /**
     * Default: `0`
     */
    public var maxX:Float;

    /**
     * Default: `0`
     */
    public var maxY:Float;

    /**
     * Default: `0`
     */
    public var minX:Float;

    /**
     * Default: `0`
     */
    public var minY:Float;

    /**
     * It is updated to _boundsID of corresponding object to keep bounds
     * in sync with content.  
     * Updated from outside, thus public modifier.
     */
    public var updateID:Int;

    /**
     * Adds other Bounds.
     * @param bounds The Bounds to be added.
     */
    public function addBounds(bounds:Bounds):Void;

    /**
     * Adds other Bounds, masked with Rectangle.
     * @param bounds The Bounds to be added.
     * @param area TODO
     */
    public function addBoundsArea(bounds:Bounds, area:Rectangle):Void;

    /**
     * Adds other Bounds, masked with Bounds.
     * @param bounds The Bounds to be added.
     * @param mask TODO
     */
    public function addBoundsMask(bounds:Bounds, mask:Bounds):Void;

    /**
     * Adds other Bounds, multiplied by matrix. Bounds shouldn't be empty.
     * @param bounds Other bounds.
     * @param matrix Multiplicator.
     */
    public function addBoundsMatrix(bounds:Bounds, matrix:Matrix):Void;

    /**
     * Adds sprite frame, transformed.
     * @param transform Transform to apply.
     * @param x0 Left X of frame.
     * @param y0 Top Y of frame.
     * @param x1 Right X of frame.
     * @param y1 Bottom Y of frame.
     */
    public function addFrame(transform:Transform, x0:Float, y0:Float, x1:Float, y1:Float):Void;

    /**
     * Adds sprite frame, multiplied by matrix.
     * @param matrix Matrix to apply.
     * @param x0 Left X of frame.
     * @param y0 Top Y of frame.
     * @param x1 Right X of frame.
     * @param y1 Bottom Y of frame.
     */
    public function addFrameMatrix(matrix:Matrix, x0:Float, y0:Float, x1:Float, y1:Float):Void;

    /**
     * Adds padded frame. (x0, y0) should be strictly less than (x1, y1)
     * @param x0 Left X of frame.
     * @param y0 Top Y of frame.
     * @param x1 Right X of frame.
     * @param y1 Bottom Y of frame.
     * @param padX Padding X.
     * @param padY Padding Y.
     */
    public function addFramePad(x0:Float, y0:Float, x1:Float, y1:Float, padX:Float, padY:Float):Void;

    /**
     * This function should be inlined when its possible.
     * @param point The point to add.
     */
    public function addPoint(point:IPointData):Void;

    /**
     * Adds a quad, not transformed.
     * @param vertices The verts to add.
     */
    public function addQuad(vertices:Array<Float>):Void;

    /**
     * Adds screen vertices from array.
     * @param vertexData Calculated vertices.
     * @param beginOffset Begin offset.
     * @param endOffset End offset, excluded.
     */
    public function addVertexData(vertexData:Array<Float>, beginOffset:Int, endOffset:Int):Void;

    /**
     * Add an array of mesh vertices.
     * @param transform Mesh transform.
     * @param vertices Mesh coordinates in array.
     * @param beginOffset Begin offset.
     * @param endOffset End offset, excluded.
     */
    public function addVertices(transform:Transform, vertices:Array<Float>, beginOffset:Int, endOffset:Int):Void;

    /**
     * Add an array of mesh vertices.
     * @param matrix mesh matrix
     * @param vertices mesh coordinates in array
     * @param beginOffset Begin offset.
     * @param endOffset End offset, excluded.
     * @param padX X padding. Default: `0`
     * @param padY Y padding. Default: `0`
     */
    public function addVerticesMatrix(matrix:Matrix, vertices:Array<Float>, beginOffset:Int, endOffset:Int, ?padX:Float, ?padY:Float):Void;

    /**
     * Clears the bounds and resets.
     */
    public function clear():Void;

    /**
     * Can return Rectangle.EMPTY constant, either construct new rectangle, either use
     * your rectangle It is not guaranteed that it will return tempRect.
     * @param rect Temporary object will be used if AABB is not empty.
     * @return A rectangle of the bounds.
     */
    public function getRectangle(rect:Rectangle):Rectangle;

    /**
     * Checks if bounds are empty.
     * @return True if empty.
     */
    public function isEmpty():Bool;

    /**
     * Pads bounds object, making it grow in all directions.  
     * If paddingY is omitted, both paddingX and paddingY will be set to paddingX.
     * @param paddingX The horizontal padding amount. Default: `0`
     * @param paddingY The vertical padding amount. Default: `0`
     */
    public function pad(?paddingX:Float, ?paddingY:Float):Void;
}