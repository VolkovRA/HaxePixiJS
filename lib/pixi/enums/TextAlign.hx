package pixi.enums;

/**
 * The TextAlign enum specifies the horizontal multiline text alignment.
 * @see Documentation: https://developer.mozilla.org/en-US/docs/Web/CSS/text-align
 * ***
 * Library: **core**  
 */
enum abstract TextAlign(String) to String from String
{
    /**
     * The inline contents are aligned to the left edge of the line box.
     */
    var LEFT = "left";

    /**
     * The inline contents are aligned to the right edge of the line box.
     */
    var RIGHT = "right";

    /**
     * The inline contents are centered within the line box.
     */
    var CENTER = "center";

    /**
     * The inline contents are justified. Text should be spaced to line up
     * its left and right edges to the left and right edges of the line box,
     * except for the last line.
     */
    var JUSTIFY = "justify";
}