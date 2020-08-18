package pixi.enums;

/**
 * The cursor CSS property sets the type of mouse cursor, if any, to
 * show when the mouse pointer is over an element.
 * 
 * @see Documentation: https://developer.mozilla.org/en-US/docs/Web/CSS/cursor
 * ***
 * Library: **core**  
 */
enum abstract CursorType(String) to String from String
{
    /////////////////
    //   General   //
    /////////////////

    /**
     * The UA will determine the cursor to display based on the current context.
     * E.g., equivalent to text when hovering text.
     */
    var AUTO = "auto";
    
    /**
     * The platform-dependent default cursor. Typically an arrow.
     */
    var DEFAULT = "default";

    /**
     * No cursor is rendered.
     */
    var NONE = "none";



    ////////////////////////
    //   Links & status   //
    ////////////////////////

    /**
     * A context menu is available.
     */
    var CONTEXT_MENU = "context-menu";

    /**
     * Help information is available.
     */
    var HELP = "help";

    /**
     * The cursor is a pointer that indicates a link.
     * Typically an image of a pointing hand.
     */
    var POINTER = "pointer";

    /**
     * The program is busy in the background, but the user can still interact with
     * the interface (in contrast to wait).
     */
    var PROGRESS = "progress";

    /**
     * The program is busy, and the user can't interact with the interface (in contrast to progress).
     * Sometimes an image of an hourglass or a watch.
     */
    var WAIT = "wait";



    ///////////////////
    //   Selection   //
    ///////////////////

    /**
     * The table cell or set of cells can be selected.
     */
    var CELL = "cell";

    /**
     * Cross cursor, often used to indicate selection in a bitmap.
     */
    var CROSSHAIR = "crosshair";

    /**
     * The text can be selected.
     * Typically the shape of an I-beam.
     */
    var TEXT = "text";

    /**
     * The vertical text can be selected.
     * Typically the shape of a sideways I-beam.
     */
    var VERTICAL_TEXT = "vertical-text";



    /////////////////////
    //   Drag & drop   //
    /////////////////////

    /**
     * An alias or shortcut is to be created.
     */
    var ALIAS = "alias";

    /**
     * Something is to be copied.
     */
    var COPY = "copy";

    /**
     * Something is to be moved.
     */
    var MOVE = "move";

    /**
     * An item may not be dropped at the current location.
     * bug 275173: On Windows and Mac OS X, no-drop is the same as not-allowed.  
     * @see https://bugzilla.mozilla.org/show_bug.cgi?id=275173
     */
    var NO_DROP = "no-drop";

    /**
     * The requested action will not be carried out.
     */
    var NOT_ALLOWED = "not-allowed";

    /**
     * Something can be grabbed (dragged to be moved).
     */
    var GRAB = "grab";

    /**
     * Something is being grabbed (dragged to be moved).
     */
    var GRABBING = "grabbing";



    //////////////////////////////
    //   Resizing & scrolling   //
    //////////////////////////////

    /**
     * Something can be scrolled in any direction (panned).
     * bug 275174: On Windows, all-scroll is the same as move.  
     * @see https://bugzilla.mozilla.org/show_bug.cgi?id=275174
     */
    var ALL_SCROLL = "all-scroll";

    /**
     * The item/column can be resized horizontally.
     * Often rendered as arrows pointing left and right with a vertical bar separating them.
     */
    var COL_RESIZE = "col-resize";

    /**
     * The item/row can be resized vertically.
     * Often rendered as arrows pointing up and down with a horizontal bar separating them.
     */
    var ROW_RESIZE = "row-resize";

    var N_RESIZE = "n-resize";

    var E_RESIZE = "e-resize";

    var S_RESIZE = "s-resize";

    var W_RESIZE = "w-resize";

    var NE_RESIZE = "ne-resize";

    var NW_RESIZE = "nw-resize";

    var SE_RESIZE = "se-resize";

    var SW_RESIZE = "sw-resize";

    /**
     * Bidirectional resize cursor.
     */
    var EW_RESIZE = "ew-resize";

    /**
     * Bidirectional resize cursor.
     */
    var NS_RESIZE = "ns-resize";

    /**
     * Bidirectional resize cursor.
     */
    var NESW_RESIZE = "nesw-resize";

    /**
     * Bidirectional resize cursor.
     */
    var NWSE_RESIZE = "nwse-resize";



    /////////////////
    //   Zooming   //
    /////////////////

    /**
     * Zoom in.
     */
    var ZOOM_IN = "zoom-in";

    /**
     * Zoom out.
     */
    var ZOOM_OUT = "zoom-out";
}