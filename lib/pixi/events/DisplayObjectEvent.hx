package pixi.events;

/**
 * The events of DisplayObject.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.DisplayObject.html#event
 * ***
 * Library: **core** 
 */
enum abstract DisplayObjectEvent(String) to String from String
{
    /**
     * Fired when this DisplayObject is added to a Container.
     * @param container The container added to. (`pixi.display.Container`)
     */
    var ADDED = "added";

    /**
     * Fired when this DisplayObject is removed from a Container.
     * @param container The container removed from. (`pixi.display.Container`)
     */
    var REMOVED = "removed";

    /**
     * Fired when a pointer device button (usually a mouse left-button) is pressed and
     * released on the display object. DisplayObject's `interactive` property must be
     * set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var CLICK = "click";

    /**
     * Fired when a pointer device button (usually a mouse left-button) is pressed on
     * the display. object. DisplayObject's `interactive` property must be set to `true`
     * to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var MOUSE_DOWN = "mousedown";

    /**
     * Fired when a pointer device (usually a mouse) is moved while over the display object.
     * DisplayObject's `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var MOUSE_MOVE = "mousemove";

    /**
     * Fired when a pointer device (usually a mouse) is moved off the display object.
     * DisplayObject's `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var MOUSE_OUT = "mouseout";

    /**
     * Fired when a pointer device (usually a mouse) is moved onto the display object.
     * DisplayObject's `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var MOUSE_OVER = "mouseover";

    /**
     * Fired when a pointer device button (usually a mouse left-button) is released
     * over the display object. DisplayObject's `interactive` property must be set to
     * `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var MOUSE_UP = "mouseup";

    /**
     * Fired when a pointer device button (usually a mouse left-button) is released
     * outside the display object that initially registered a **mousedown**. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var MOUSE_UP_OUTSIDE = "mouseupoutside";

    /**
     * Fired when the operating system cancels a pointer event. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var POINTER_CANCEL = "pointercancel";

    /**
     * Fired when a pointer device button is pressed on the display object. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var POINTER_DOWN = "pointerdown";

    /**
     * Fired when a pointer device is moved while over the display object. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var POINTER_MOVE = "pointermove";

    /**
     * Fired when a pointer device is moved off the display object. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var POINTER_OUT = "pointerout";

    /**
     * Fired when a pointer device is moved onto the display object. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var POINTER_OVER = "pointerover";

    /**
     * Fired when a pointer device button is pressed and released on the display object.
     * DisplayObject's `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var POINTER_TAP = "pointertap";

    /**
     * Fired when a pointer device button is released over the display object.
     * DisplayObject's `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var POINTER_UP = "pointerup";

    /**
     * Fired when a pointer device button is released outside the display object
     * that initially registered a **pointerdown**. DisplayObject's `interactive`
     * property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var POINTER_UP_OUTSIDE = "pointerupoutside";

    /**
     * Fired when a pointer device secondary button (usually a mouse right-button)
     * is pressed and released on the display object. DisplayObject's `interactive`
     * property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var RIGHT_CLICK = "rightclick";

    /**
     * Fired when a pointer device secondary button (usually a mouse right-button)
     * is pressed on the display object. DisplayObject's `interactive` property must
     * be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var RIGHT_DOWN = "rightdown";

    /**
     * Fired when a pointer device secondary button (usually a mouse right-button)
     * is released over the display object. DisplayObject's `interactive` property
     * must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var RIGHT_UP = "rightup";

    /**
     * Fired when a pointer device secondary button (usually a mouse right-button)
     * is released outside the display object that initially registered a **rightdown**.
     * DisplayObject's `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var RIGHT_UP_OUTSIDE = "rightupoutside";

    /**
     * Fired when a touch point is placed and removed from the display object.
     * DisplayObject's `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var TAP = "tap";

    /**
     * Fired when the operating system cancels a touch. DisplayObject's `interactive`
     * property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var TOUCH_CANCEL = "touchcancel";

    /**
     * Fired when a touch point is removed from the display object. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var TOUCH_END = "touchend";

    /**
     * Fired when a touch point is removed outside of the display object that initially
     * registered a **touchstart**. DisplayObject's `interactive` property must be set to
     * `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var TOUCH_END_OUTSIDE = "touchendoutside";

    /**
     * Fired when a touch point is moved along the display object. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var TOUCH_MOVE = "touchmove";

    /**
     * Fired when a touch point is placed on the display object. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    var TOUCH_START = "touchstart";
}