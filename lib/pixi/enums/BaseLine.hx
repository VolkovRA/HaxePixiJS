package pixi.enums;

/**
 * The BaseLine enum specifies the current text baseline used when drawing text.
 * 
 * @see Documentation: https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/textBaseline
 * ***
 * Library: **core**  
 */
enum abstract BaseLine(String) to String from String
{
    /**
     * The text baseline is the top of the em square.
     */
    var TOP = "top";

    /**
     * The text baseline is the hanging baseline. (Used by Tibetan and other Indic scripts.)
     */
    var HANGING = "hanging";

    /**
     * The text baseline is the middle of the em square.
     */
    var MIDDLE = "middle";

    /**
     * The text baseline is the normal alphabetic baseline. Default value.
     */
    var ALPHABETIC = "alphabetic";

    /**
     * The text baseline is the ideographic baseline; this is the bottom
     * of the body of the characters, if the main body of characters
     * protrudes beneath the alphabetic baseline. (Used by Chinese,
     * Japanese, and Korean scripts.)
     */
    var IDEOGRAPHIC = "ideographic";

    /**
     * The text baseline is the bottom of the bounding box.
     * This differs from the ideographic baseline in that the ideographic
     * baseline doesn't consider descenders.
     */
    var BOTTOM = "bottom";
}