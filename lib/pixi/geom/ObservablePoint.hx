package pixi.geom;

import haxe.Constraints;
import pixi.geom.Point;

/**
 * The Point object represents a location in a two-dimensional coordinate system,
 * where x represents the horizontal axis and y represents the vertical axis.
 * 
 * An ObservablePoint is a point that triggers a callback when the point's
 * position is changed.
 * 
 * @see https://pixijs.download/dev/docs/PIXI.ObservablePoint.html
 * @see Source code: https://pixijs.download/dev/docs/packages_math_src_ObservablePoint.js.html
 */
@:native("PIXI.ObservablePoint")
extern class ObservablePoint implements IPoint
{
    /**
     * Create a new ObservablePoint instance.
     * @param callback Callback when changed.
     * @param scope Owner of callback.
     * @param x Position of the point on the x axis. Default: `0`
     * @param y Position of the point on the y axis. Default: `0`
     */
    public function new(callback:Function, scope:Dynamic, ?x:Float, ?y:Float);

    /**
     * The position of the displayObject on the x axis relative to the local
     * coordinates of the parent.
     * 
     * Default: `0`
     */
    public var x:Float;

    /**
     * The position of the displayObject on the x axis relative to the local
     * coordinates of the parent.
     * 
     * Default: `0`
     */
    public var y:Float;

    /**
     * Creates a clone of this point.
     * 
     * The callback and scope params can be overidden otherwise they will default
     * to the clone object's values.
     * 
     * @return A copy of the point.
     */
    public function clone():ObservablePoint;

    /**
     * Copies x and y from the given point.
     * @param point The point to copy from.
     * @return Returns itself.
     */
    public function copyFrom(point:IPointData):ObservablePoint;

    /**
     * Copies x and y into the given point.
     * @param point The point to copy.
     * @return Given point with values updated.
     */
    public function copyTo(point:IPoint):ObservablePoint;

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
    public function set(?x:Float, ?y:Float):ObservablePoint;
}