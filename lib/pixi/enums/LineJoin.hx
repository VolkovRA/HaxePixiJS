package pixi.enums;

/**
 * Supported line joints in `LineStyle` for graphics.
 * @see http://pixijs.download/release/docs/PIXI.Graphics.html#lineStyle
 * @see https://graphicdesign.stackexchange.com/questions/59018/what-is-a-bevel-join-of-two-lines-exactly-illustrator
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.LINE_JOIN` for more convenience.*
 */
enum abstract LineJoin(String) to String from String
{
    /**
     * Make a sharp corner where outer part of lines meet.
     */
    var MITER = "miter";

    /**
     * Add a square butt at each end of line segment and fill the triangle at turn.
     */
    var BEVEL = "bevel";

    /**
     * Add an arc at the joint
     */
    var ROUND = "round";
}