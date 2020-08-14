package pixi.geom;

/**
 * The Point object represents a location in a two-dimensional coordinate system,
 * where x represents the horizontal axis and y represents the vertical axis.
 * @see https://pixijs.download/dev/docs/PIXI.Point.html
 * @see Source code: https://pixijs.download/dev/docs/packages_math_src_Point.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Point")
extern class Point implements IPoint
{
    /**
     * Create a new Point instance.
     * @param x Position of the point on the x axis. Default: `0`
     * @param y Position of the point on the y axis. Default: `0`
     */
    public function new(?x:Float, ?y:Float);

    /**
     * Position of the point on the x axis.  
     * Default: `0`
     */
    public var x:Float;

    /**
     * Position of the point on the y axis.  
     * Default: `0`
     */
    public var y:Float;

    /**
     * Creates a clone of this point.
     * @return A copy of the point.
     */
    public function clone():Point;

    /**
     * Copies x and y from the given point.
     * @param point The point to copy from.
     * @return Returns itself.
     */
    public function copyFrom(point:IPointData):Point;

    /**
     * Copies x and y into the given point.
     * @param point The point to copy.
     * @return Given point with values updated.
     */
    public function copyTo(point:IPoint):Point;

    /**
     * Returns true if the given point is equal to this point.
     * @param point The point to check.
     * @return Whether the given point equal to this point.
     */
    public function equals(point:IPointData):Bool;

    /**
     * Sets the point to a new x and y position. If y is omitted, both x and y will be set to x.
     * @param x Position of the point on the x axis. Default: `0`
     * @param y Position of the point on the y axis. Default: x
     * @return Returns itself.
     */
    public function set(?x:Float, ?y:Float):Point;
}

/**
 * Common interface for points. Both Point and ObservablePoint implement it.
 * @see https://pixijs.download/dev/docs/PIXI.IPoint.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.IPoint")
extern interface IPoint
{
    /**
     * X coord.
     */
    public var x:Float;

    /**
     * Y coord.
     */
    public var y:Float;

    /**
     * Copies x and y from the given point.
     * @param point The point to copy from.
     * @return Returns itself.
     */
    public function copyFrom(point:IPointData):IPoint;

    /**
     * Copies x and y into the given point.
     * @param point The point to copy.
     * @return Given point with values updated.
     */
    public function copyTo(point:IPoint):IPoint;

    /**
     * Returns true if the given point is equal to this point.
     * @param point The point to check.
     * @return Whether the given point equal to this point.
     */
    public function equals(point:IPointData):Bool;

    /**
     * Sets the point to a new x and y position. If y is omitted, both x and y will be set to x.
     * @param x Position of the point on the x axis. Default: `0`
     * @param y Position of the point on the y axis. Default: x
     * @return Returns itself.
     */
    public function set(?x:Float, ?y:Float):IPoint;
}

/**
 * Common interface for points. Both Point and ObservablePoint implement it.
 * @see https://pixijs.download/dev/docs/PIXI.IPointData.html
 * ***
 * Library: **core** 
 */
typedef IPointData =
{
    /**
     * X coord.
     */
    var x:Float;

    /**
     * Y coord.
     */
    var y:Float;
}