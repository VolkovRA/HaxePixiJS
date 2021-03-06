package pixi.enums;

/**
 * Value indicates the device type (mouse, pen, or touch) that caused of `PointerEvent`.
 * @see PointerEvent.pointerType: https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/pointerType
 * ***
 * Library: **core**  
 */
enum abstract PointerType(String) to String from String
{
    /**
     * The event was generated by a mouse device.
     */
    var MOUSE = "mouse";

    /**
     * The event was generated by a pen or stylus device.
     */
    var PEN = "pen";

    /**
     * The event was generated by a touch, such as a finger.
     */
    var TOUCH = "touch";
}