package pixi.geom;

/**
 * The Point object represents a location in a two-dimensional coordinate system,
 * where x represents the horizontal axis and y represents the vertical axis.
 * 
 * @see https://pixijs.download/dev/docs/PIXI.Circle.html
 * @see Source code: https://pixijs.download/dev/docs/packages_math_src_shapes_Circle.js.html
 */
@:native("PIXI.Circle")
extern class Circle implements IHitArea
{
    /**
     * Create a new Circle instance.
     * @param x The X coordinate of the center of this circle. Default: `0`
     * @param y The Y coordinate of the center of this circle. Default: `0`
     * @param radius The radius of the circle. Default: `0`
     */
    public function new(?x:Float, ?y:Float, ?radius:Float);

    /**
     * The type of the object, mainly used to avoid `instanceof` checks.
     * 
     * Default: `Pixi.SHAPES.CIRC`
     */
    public var type(default, null):Int;

    /**
     * The X coordinate of the center of this circle.
     * 
     * Default: `0`
     */
    public var x:Float;

    /**
     * The Y coordinate of the center of this circle.
     * 
     * Default: `0`
     */
    public var y:Float;

    /**
     * The radius of the circle.
     * 
     * Default: `0`
     */
    public var radius:Float;

    /**
     * Creates a clone of this Circle instance.
     * @return A copy of the Circle.
     */
    public function clone():Circle;

    /**
     * Checks whether the x and y coordinates given are contained within this circle.
     * @param x The X coordinate of the point to test.
     * @param y The Y coordinate of the point to test.
     * @return Whether the x/y coordinates are within this Circle.
     */
    public function contains(x:Float, y:Float):Bool;

    /**
     * Returns the framing rectangle of the circle as a Rectangle object.
     * @return The framing rectangle.
     */
    public function getBounds():Rectangle;
}