package pixi.enums;

/**
 * The WhiteSpace enum specifies how white space inside an element is handled.
 * 
 * The following table summarizes the behavior of the various white-space values:
 * 
 * ||New lines|Spaces and tabs|Text wrapping|End-of-line spaces|
 * |:-|:-|:-|:-|:-|
 * |**normal**|Collapse|Collapse|Wrap|Remove|
 * |**nowrap**|Collapse|Collapse|No wrap|Remove|
 * |**pre**|Preserve|Preserve|No wrap|Preserve|
 * |**pre-wrap**|Preserve|Preserve|Wrap|Hang|
 * |**pre-line**|Preserve|Collapse|Wrap|Remove|
 * |**break-spaces**|Preserve|Preserve|Wrap|Wrap|
 * 
 * @see Documentation: https://developer.mozilla.org/en-US/docs/Web/CSS/white-space
 * ***
 * Library: **core**  
 */
enum abstract WhiteSpace(String) to String from String
{
    /**
     * Sequences of white space are collapsed. Newline characters in the
     * source are handled the same as other white space. Lines are broken
     * as necessary to fill line boxes.
     */
    var NORMAL = "normal";

    /**
     * Collapses white space as for normal, but suppresses line breaks
     * (text wrapping) within the source.
     */
    var NOWRAP = "nowrap";

    /**
     * Sequences of white space are preserved. Lines are only broken at
     * newline characters in the source and at `<br>` elements.
     */
    var PRE = "pre";

    /**
     * Sequences of white space are preserved. Lines are broken at newline
     * characters, at `<br>`, and as necessary to fill line boxes.
     */
    var PRE_WRAP = "pre-wrap";

    /**
     * Sequences of white space are collapsed. Lines are broken at newline
     * characters, at <br>, and as necessary to fill line boxes.
     */
    var PRE_LINE = "pre-line";

    /**
     * The behavior is identical to that of pre-wrap, except that:
     * - Any sequence of preserved white space always takes up space,
     *   including at the end of the line.
     * - A line breaking opportunity exists after every preserved white space
     *   character, including between white space characters.
     * - Such preserved spaces take up space and do not hang, and thus affect
     *   the box’s intrinsic sizes (min-content size and max-content size).
     */
    var BREAK_SPACES = "break-spaces";
}