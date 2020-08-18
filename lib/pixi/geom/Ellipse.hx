package pixi.geom;

import pixi.enums.ShapeType;

/**
 * The Ellipse object is used to help draw graphics and can also be used
 * to specify a hit area for displayObjects.
 * @see Documentation: https://pixijs.download/dev/docs/PIXI.Ellipse.html
 * @see Source code: https://pixijs.download/dev/docs/packages_math_src_shapes_Ellipse.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Ellipse")
extern class Ellipse implements IHitArea
{
    /**
     * Create a new Ellipse instance.
     * @param x The X coordinate of the center of this ellipse. Default: `0`
     * @param y The Y coordinate of the center of this ellipse. Default: `0`
     * @param halfWidth The half width of this ellipse. Default: `0`
     * @param halfHeight The half height of this ellipse. Default: `0`
     */
    public function new(?x:Float, ?y:Float, ?halfWidth:Float, ?halfHeight:Float);

    /**
     * The type of the object, mainly used to avoid `instanceof` checks.  
     * Default: `ShapeType.ELIP`
     */
    public var type(default, null):ShapeType;

    /**
     * The X coordinate of the center of this ellipse.  
     * Default: `0`
     */
    public var x:Float;

    /**
     * The Y coordinate of the center of this ellipse.  
     * Default: `0`
     */
    public var y:Float;

    /**
     * The width of this ellipse.  
     * Default: `0`
     */
    public var width:Float;

    /**
     * The height of this ellipse.  
     * Default: `0`
     */
    public var height:Float;

    /**
     * Creates a clone of this Ellipse instance.
     * @return A copy of the ellipse.
     */
    public function clone():Ellipse;

    /**
     * Checks whether the x and y coordinates given are contained within this ellipse.
     * @param x The X coordinate of the point to test.
     * @param y The Y coordinate of the point to test.
     * @return Whether the x/y coords are within this ellipse.
     */
    public function contains(x:Float, y:Float):Bool;

    /**
     * Returns the framing rectangle of the ellipse as a Rectangle object.
     * @return The framing rectangle.
     */
    public function getBounds():Rectangle;
}