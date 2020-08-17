package pixi.enums;

/**
 * Constants that identify shapes, mainly to prevent `instanceof` calls.
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.SHAPES ` for more convenience.*
 */
enum abstract ShapeType(Int) to Int from Int
{
    /**
     * Polygon.
     */
    var POLY = 0;

    /**
     * Rectangle.
     */
    var RECT = 1;

    /**
     * Circle.
     */
    var CIRC = 2;

    /**
     * Ellipse.
     */
    var ELIP = 3;

    /**
     * Rounded Rectangle.
     */
    var RREC = 4;
}