package pixi.enums;

/**
 * The FontWeight enum specifies the weight (or boldness) of the font.
 * The weights available depend on the font-family that is currently set.
 * 
 * @see Documentation: https://developer.mozilla.org/en-US/docs/Web/CSS/font-weight
 * ***
 * Library: **core**  
 */
enum abstract FontWeight(String) to String from String
{
    /**
     * Normal font weight. Same as 400.
     */
    var NORMAL = "normal";

    /**
     * Bold font weight. Same as 700.
     */
    var BOLD = "bold";

    /**
     * One relative font weight lighter than the parent element.
     * Note that only four font weights are considered for relative weight calculation;
     * see the [Meaning of relative weights](https://developer.mozilla.org/en-US/docs/Web/CSS/font-weight#Meaning_of_relative_weights) section below.
     */
    var LIGHTER = "lighter";

    /**
     * One relative font weight heavier than the parent element.
     * Note that only four font weights are considered for relative
     * weight calculation; see the [Meaning of relative weights](https://developer.mozilla.org/en-US/docs/Web/CSS/font-weight#Meaning_of_relative_weights) section below.
     */
    var BOLDER = "bolder";
}