package pixi.geom;

import pixi.enums.ShapeType;

/**
 * The Rounded Rectangle object is an area that has nice rounded corners, as
 * indicated by its top-left corner point (x, y) and by its width and its
 * height and its radius.
 * @see https://pixijs.download/dev/docs/PIXI.RoundedRectangle.html
 * @see Source code: https://pixijs.download/dev/docs/packages_math_src_shapes_RoundedRectangle.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.RoundedRectangle")
extern class RoundedRectangle implements IHitArea
{
    /**
     * Create a new RoundedRectangle instance.
     * @param x The X coordinate of the upper-left corner of the rounded rectangle. Default: `0`
     * @param y The Y coordinate of the upper-left corner of the rounded rectangle. Default: `0`
     * @param width The overall width of this rounded rectangle. Default: `0`
     * @param height The overall height of this rounded rectangle. Default: `0`
     * @param radius Controls the radius of the rounded corners. Default: `20`
     */
    public function new(?x:Float, ?y:Float, ?width:Float, ?height:Float, ?radius:Float);

    /**
     * The type of the object, mainly used to avoid `instanceof` checks.  
     * Default: `ShapeType.RREC`
     */
    public var type(default, null):ShapeType;

    /**
     * The X coordinate of the upper-left corner of the rounded rectangle.  
     * Default: `0`
     */
    public var x:Float;

    /**
     * The Y coordinate of the upper-left corner of the rounded rectangle.  
     * Default: `0`
     */
    public var y:Float;

    /**
     * The width of this rect.  
     * Default: `0`
     */
    public var width:Float;

    /**
     * The height of this rect.  
     * Default: `0`
     */
    public var height:Float;

    /**
     * The radius of the rounded corners.  
     * Default: `20`
     */
    public var radius:Float;

    /**
     * Creates a clone of this Rounded Rectangle.
     * @return A copy of the rounded rectangle.
     */
    public function clone():RoundedRectangle;

    /**
     * Checks whether the x and y coordinates given are contained within this Rounded Rectangle.
     * @param x The X coordinate of the point to test.
     * @param y The Y coordinate of the point to test.
     * @return Whether the x/y coordinates are within this Rounded Rectangle.
     */
    public function contains(x:Float, y:Float):Bool;
}