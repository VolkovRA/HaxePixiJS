package pixi.enums;

/**
 * The FontStyle enum specifies whether a font should be styled with a normal,
 * italic, or oblique face from its font-family.
 * 
 * @see Documentation: https://developer.mozilla.org/en-US/docs/Web/CSS/font-style
 * ***
 * Library: **core**  
 */
enum abstract FontStyle(String) to String from String
{
    /**
     * Selects a font that is classified as `normal` within a
     * [font-family](https://developer.mozilla.org/en-US/docs/Web/CSS/font-family).
     */
    var NORMAL = "normal";

    /**
     * Selects a font that is classified as `italic`. If no italic version of the
     * face is available, one classified as `oblique` is used instead. If neither
     * is available, the style is artificially simulated.
     */
    var ITALIC = "italic";

    /**
     * Selects a font that is classified as `oblique`. If no oblique version of the
     * face is available, one classified as `italic` is used instead. If neither is
     * available, the style is artificially simulated.
     */
    var OBLIQUE = "oblique";
}