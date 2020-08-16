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