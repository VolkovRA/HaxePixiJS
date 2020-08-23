package pixi.utils;

import haxe.extern.EitherType;
import pixi.display.Graphics;
import pixi.enums.ShapeType;
import pixi.geom.Circle;
import pixi.geom.Ellipse;
import pixi.geom.Polygon;
import pixi.geom.Rectangle;
import pixi.geom.RoundedRectangle;
import pixi.geom.Matrix;

/**
 * A class to contain data useful for Graphics objects
 * @see Documentation: http://pixijs.download/release/docs/PIXI.GraphicsData.html
 * @see Source code: http://pixijs.download/release/docs/packages_graphics_src_GraphicsData.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.GraphicsData")
extern class GraphicsData
{
    /**
     * Create a new GraphicsData instance.
     * @param shape The shape object to draw.
     * @param fillStyle The width of the line to draw. Default: `null`
     * @param lineStyle The color of the line to draw. Default: `null`
     * @param matrix Transform matrix. Default: `null`
     */
    public function new(shape:EitherType<Circle,EitherType<Ellipse,EitherType<Polygon,EitherType<Rectangle,RoundedRectangle>>>>, ?fillStyle:FillStyle, ?lineStyle:LineStyle, ?matrix:Matrix);

    /**
     * The style of the fill.
     */
    public var fillStyle:FillStyle;

    /**
     * The collection of holes.
     */
    public var holes:Array<GraphicsData>;

    /**
     * The style of the line.
     */
    public var lineStyle:LineStyle;

    /**
     * The transform matrix.
     */
    public var matrix:Matrix;

    /**
     * The collection of points.
     */
    public var points:Array<Float>;

    /**
     * The shape object to draw.  
     * Can be:
     * - Circle.
     * - Ellipse.
     * - Polygon.
     * - Rectangle.
     * - RoundedRectangle.
     */
    public var shape:Dynamic;

    /**
     * The type of the shape, see the Const.Shapes file for all the existing types.
     */
    public var type:ShapeType;
    
    /**
     * Creates a new GraphicsData object with the same values as this one.
     * @return Cloned GraphicsData object.
     */
    public function clone():GraphicsData;

    /**
     * Destroys the Graphics data.
     */
    public function destroy():Void;
}