package pixi.events;

import haxe.extern.EitherType;
import js.html.PointerEvent;
import js.html.Touch;
import js.html.TouchEvent;
import js.html.MouseEvent;
import pixi.display.DisplayObject;
import pixi.display.Sprite;
import pixi.enums.PointerType;
import pixi.geom.Point;

/**
 * Event class that mimics native DOM events.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.InteractionEvent.html
 * @see Source code: http://pixijs.download/release/docs/packages_interaction_src_InteractionEvent.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.InteractionEvent")
extern class InteractionEvent
{
    /**
     * Create a new InteractionEvent instance.
     */
    public function new();

    /**
     * Fired when a pointer device button (usually a mouse left-button) is pressed and
     * released on the display object. DisplayObject's `interactive` property must be
     * set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var CLICK = "click";

    /**
     * Fired when a pointer device button (usually a mouse left-button) is pressed on
     * the display. object. DisplayObject's `interactive` property must be set to `true`
     * to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var MOUSE_DOWN = "mousedown";

    /**
     * Fired when a pointer device (usually a mouse) is moved while over the display object.
     * DisplayObject's `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var MOUSE_MOVE = "mousemove";

    /**
     * Fired when a pointer device (usually a mouse) is moved off the display object.
     * DisplayObject's `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var MOUSE_OUT = "mouseout";

    /**
     * Fired when a pointer device (usually a mouse) is moved onto the display object.
     * DisplayObject's `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var MOUSE_OVER = "mouseover";

    /**
     * Fired when a pointer device button (usually a mouse left-button) is released
     * over the display object. DisplayObject's `interactive` property must be set to
     * `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var MOUSE_UP = "mouseup";

    /**
     * Fired when a pointer device button (usually a mouse left-button) is released
     * outside the display object that initially registered a **mousedown**. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var MOUSE_UP_OUTSIDE = "mouseupoutside";

    /**
     * Fired when the operating system cancels a pointer event. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var POINTER_CANCEL = "pointercancel";

    /**
     * Fired when a pointer device button is pressed on the display object. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var POINTER_DOWN = "pointerdown";

    /**
     * Fired when a pointer device is moved while over the display object. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var POINTER_MOVE = "pointermove";

    /**
     * Fired when a pointer device is moved off the display object. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var POINTER_OUT = "pointerout";

    /**
     * Fired when a pointer device is moved onto the display object. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var POINTER_OVER = "pointerover";

    /**
     * Fired when a pointer device button is pressed and released on the display object.
     * DisplayObject's `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var POINTER_TAP = "pointertap";

    /**
     * Fired when a pointer device button is released over the display object.
     * DisplayObject's `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var POINTER_UP = "pointerup";

    /**
     * Fired when a pointer device button is released outside the display object
     * that initially registered a **pointerdown**. DisplayObject's `interactive`
     * property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var POINTER_UP_OUTSIDE = "pointerupoutside";

    /**
     * Fired when a pointer device secondary button (usually a mouse right-button)
     * is pressed and released on the display object. DisplayObject's `interactive`
     * property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var RIGHT_CLICK = "rightclick";

    /**
     * Fired when a pointer device secondary button (usually a mouse right-button)
     * is pressed on the display object. DisplayObject's `interactive` property must
     * be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var RIGHT_DOWN = "rightdown";

    /**
     * Fired when a pointer device secondary button (usually a mouse right-button)
     * is released over the display object. DisplayObject's `interactive` property
     * must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var RIGHT_UP = "rightup";

    /**
     * Fired when a pointer device secondary button (usually a mouse right-button)
     * is released outside the display object that initially registered a **rightdown**.
     * DisplayObject's `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var RIGHT_UP_OUTSIDE = "rightupoutside";

    /**
     * Fired when a touch point is placed and removed from the display object.
     * DisplayObject's `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var TAP = "tap";

    /**
     * Fired when the operating system cancels a touch. DisplayObject's `interactive`
     * property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var TOUCH_CANCEL = "touchcancel";

    /**
     * Fired when a touch point is removed from the display object. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var TOUCH_END = "touchend";

    /**
     * Fired when a touch point is removed outside of the display object that initially
     * registered a **touchstart**. DisplayObject's `interactive` property must be set to
     * `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var TOUCH_END_OUTSIDE = "touchendoutside";

    /**
     * Fired when a touch point is moved along the display object. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var TOUCH_MOVE = "touchmove";

    /**
     * Fired when a touch point is placed on the display object. DisplayObject's
     * `interactive` property must be set to `true` to fire event.
     * @param event Interaction event. (`pixi.events.InteractionEvent`)
     */
    static public inline var TOUCH_START = "touchstart";

    /**
     * The object whose event listener’s callback is currently being invoked.
     */
    public var currentTarget:DisplayObject;

    /**
     * InteractionData related to this event.
     */
    public var data:InteractionData;

    /**
     * Whether this event will continue propagating in the tree.
     * 
     * Remaining events for the stopsPropagatingAt object will still be dispatched.
     */
    public var stopped:Bool;

    /**
     * The object which caused this event to be dispatched.
     * For listener callback see PIXI.InteractionEvent.currentTarget.
     */
    public var target:DisplayObject;

    /**
     * Type of the event.
     */
    public var type:String;

    /**
     * Resets the event.
     */
    public function reset():Void;

    /**
     * Prevents event from reaching any objects other than the current object.
     */
    public function stopPropagation():Void;
}

/**
 * Holds all information related to an Interaction event.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.InteractionData.html
 * @see Source code: http://pixijs.download/release/docs/packages_interaction_src_InteractionData.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.InteractionData")
extern class InteractionData
{
    /**
     * Create a new InteractionData instance.
     */
    public function new();

    /**
     * Indicates which button was pressed on the mouse or pointer device to trigger the event.
     * @see https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/button
     */
    public var button:Int;

    /**
     * Indicates which buttons are pressed on the mouse or pointer device when the event is triggered.
     * @see https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/buttons
     */
    public var buttons:Int;

    /**
     * This point stores the global coords of where the touch/mouse event happened.
     */
    public var global:Point;

    /**
     * The width of the pointer's contact along the x-axis, measured in CSS pixels. radiusX
     * of TouchEvents will be represented by this value.
     * @see https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/width
     */
    public var width:Float;

    /**
     * The height of the pointer's contact along the y-axis, measured in CSS pixels. radiusY
     * of TouchEvents will be represented by this value.
     * @see https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/height
     */
    public var height:Float;

    /**
     * Unique identifier for this interaction.
     */
    public var identifier:Int;

    /**
     * Indicates whether or not the pointer device that created the event is the primary pointer.
     * @see https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/isPrimary
     */
    public var isPrimary:Bool;

    /**
     * When passed to an event handler, this will be the original DOM Event that was captured.
     * @see MouseEvent: https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent
     * @see TouchEvent: https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent
     * @see PointerEvent: https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent
     */
    public var originalEvent:EitherType<MouseEvent, EitherType<TouchEvent, PointerEvent>>;

    /**
     * The unique identifier of the pointer. It will be the same as `identifier`.
     * @see https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/pointerId
     */
    public var pointerId(default, null):Int;

    /**
     * The type of pointer that triggered the event.
     * @see https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/pointerType
     */
    public var pointerType:PointerType;

    /**
     * Pressure applied by the pointing device during the event.
     * A Touch's force property will be represented by this value.
     * @see https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/pressure
     */
    public var pressure:Float;

    /**
     * From TouchEvents (not PointerEvents triggered by touches), the rotationAngle of the Touch.
     * @see https://developer.mozilla.org/en-US/docs/Web/API/Touch/rotationAngle
     */
    public var rotationAngle:Float;

    /**
     * Barrel pressure on a stylus pointer.
     * @see https://w3c.github.io/pointerevents/#pointerevent-interface
     */
    public var tangentialPressure:Float;

    /**
     * The target Sprite that was interacted with.
     */
    public var target:Sprite;
    
    /**
     * The angle, in degrees, between the pointer device and the screen.
     * @see https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/tiltX
     */
    public var tiltX:Float;

    /**
     * The angle, in degrees, between the pointer device and the screen.
     * @see https://developer.mozilla.org/en-US/docs/Web/API/PointerEvent/tiltY
     */
    public var tiltY:Float;

    /**
     * Twist of a stylus pointer.
     * @see https://w3c.github.io/pointerevents/#pointerevent-interface
     */
    public var twist:Float;

    /**
     * Copies properties from normalized event data.
     * @return The normalized event data.
     */
    public function copyEvent(event:EitherType<Touch, EitherType<MouseEvent, PointerEvent>>):Void;

    /**
     * This will return the local coordinates of the specified displayObject for this InteractionData.
     * @param displayObject The DisplayObject that you would like the local coords off.
     * @param point A Point object in which to store the value, optional. (Otherwise will create a new point)
     * @param globalPos A Point object containing your custom global coords, optional. (Otherwise will use the current global coords)
     * @return A point containing the coordinates of the InteractionData position relative to the DisplayObject.
     */
    public function getLocalPosition(displayObject:DisplayObject, ?point:Point, ?globalPos:Point):Point;

    /**
     * Resets the data for pooling.
     */
    public function reset():Void;
}