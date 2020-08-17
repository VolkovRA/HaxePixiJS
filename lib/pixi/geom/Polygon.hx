package pixi.geom;

import haxe.extern.EitherType;
import pixi.enums.ShapeType;
import pixi.geom.Point;

/**
 * A class to define a shape via user defined co-orinates.
 * @see https://pixijs.download/dev/docs/PIXI.Polygon.html
 * @see Source code: https://pixijs.download/dev/docs/packages_math_src_shapes_Polygon.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Polygon")
extern class Polygon implements IHitArea
{
    /**
     * Create a new Polygon instance.
     * @param points Repeatable. This can be an array of Points that form the polygon, a flat
     *               array of numbers that will be interpreted as [x,y, x,y, ...], or the
     *               arguments passed can be all the points of the polygon e.g.
     *               `new PIXI.Polygon(new PIXI.Point(), new PIXI.Point(), ...)`, or the
     *               arguments passed can be flat x,y values e.g. `new Polygon(x,y, x,y, x,y, ...)`
     *               where `x` and `y` are Numbers.
     */
    public function new(points:EitherType<Array<IPoint>, Array<Float>>);

    /**
     * The type of the object, mainly used to avoid `instanceof` checks.  
     * Default: `ShapeType.POLY`
     */
    public var type(default, null):ShapeType;

    /**
     * `false` after moveTo, `true` after `closePath`. In all other cases it is `true`.  
     * Default: `true`
     */
    public var closeStroke:Bool;

    /**
     * An array of the points of this polygon.
     */
    public var points:Array<Float>;

    /**
     * Creates a clone of this polygon.
     * @return A copy of the polygon.
     */
    public function clone():Polygon;

    /**
     * Checks whether the x and y coordinates passed to this function are contained within this polygon.
     * @param x The X coordinate of the point to test.
     * @param y The Y coordinate of the point to test.
     * @return Whether the x/y coordinates are within this polygon.
     */
    public function contains(x:Float, y:Float):Bool;
}