package pixi.geom;

/**
 * Rectangle object is an area defined by its position, as indicated by
 * its top-left corner point (x, y) and by its width and its height.
 * @see https://pixijs.download/dev/docs/PIXI.Rectangle.html
 * @see Source code: https://pixijs.download/dev/docs/packages_math_src_shapes_Rectangle.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Rectangle")
extern class Rectangle implements IHitArea
{
    /**
     * Create a new Rectangle instance.
     * @param x The X coordinate of the upper-left corner of the rectangle. Default: `0`
     * @param y The Y coordinate of the upper-left corner of the rectangle. Default: `0`
     * @param width The overall width of this rectangle. Default: `0`
     * @param height The overall height of this rectangle. Default: `0`
     */
    public function new(?x:Float, ?y:Float, ?width:Float, ?height:Float);

    /**
     * A constant empty rectangle.
     */
    static public var EMPTY(default, null):Rectangle;

    /**
     * The type of the object, mainly used to avoid `instanceof` checks.  
     * Default: `Pixi.SHAPES.RECT`
     */
    public var type(default, null):Int;

    /**
     * Returns the top edge of the rectangle.
     */
    public var top:Float;

    /**
     * Returns the left edge of the rectangle.
     */
    public var left:Float;

    /**
     * Returns the right edge of the rectangle.
     */
    public var right:Float;

    /**
     * Returns the bottom edge of the rectangle.
     */
    public var bottom:Float;

    /**
     * The X coordinate of rectangle.  
     * Default: `0`
     */
    public var x:Float;

    /**
     * The Y coordinate of rectangle.  
     * Default: `0`
     */
    public var y:Float;

    /**
     * The width of this rectangle.  
     * Default: `0`
     */
    public var width:Float;

    /**
     * The height of this rectangle.  
     * Default: `0`
     */
    public var height:Float;

    /**
     * Enlarges rectangle that way its corners lie on grid.
     * @param resolution Resolution. Default: `1`
     * @param eps Precision. Default: `	0.001`
     * @return Returns itself.
     */
    public function ceil(?resolution:Float, ?eps:Float):Rectangle;

    /**
     * Creates a clone of this Rectangle.
     * @return A copy of the rectangle.
     */
    public function clone():Rectangle;

    /**
     * Checks whether the x and y coordinates given are contained within this Rectangle.
     * @param x The X coordinate of the point to test.
     * @param y The Y coordinate of the point to test.
     * @return Whether the x/y coordinates are within this Rectangle.
     */
    public function contains(x:Float, y:Float):Bool;

    /**
     * Copies another rectangle to this one.
     * @param rectangle The rectangle to copy from.
     * @return Returns itself.
     */
    public function copyFrom(rectangle:Rectangle):Rectangle;

    /**
     * Copies this rectangle to another one.
     * @param rectangle The rectangle to copy to.
     * @return Returns given parameter.
     */
    public function copyTo(rectangle:Rectangle):Rectangle;

    /**
     * Enlarges this rectangle to include the passed rectangle.
     * @param rectangle The rectangle to include.
     * @return Returns itself.
     */
    public function enlarge(rectangle:Rectangle):Rectangle;

    /**
     * Fits this rectangle around the passed one.
     * @param rectangle The rectangle to fit.
     * @return Returns itself.
     */
    public function fit(rectangle:Rectangle):Rectangle;

    /**
     * Pads the rectangle making it grow in all directions.  
     * If paddingY is omitted, both paddingX and paddingY will be set to paddingX.
     * @param paddingX The horizontal padding amount. Default: `0`
     * @param paddingY The vertical padding amount. Default: `0`
     * @return Returns itself.
     */
    public function pad(?paddingX:Float, ?paddingY:Float):Rectangle;
}