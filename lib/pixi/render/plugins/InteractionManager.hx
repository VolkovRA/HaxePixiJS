package pixi.render.plugins;

import haxe.Constraints.Function;
import haxe.DynamicAccess;
import haxe.extern.EitherType;
import js.html.Element;
import pixi.display.Container;
import pixi.display.DisplayObject;
import pixi.display.Sprite;
import pixi.display.TilingSprite;
import pixi.events.EventEmitter;
import pixi.events.InteractionEvent;
import pixi.events.InteractionEvent.InteractionData;
import pixi.geom.Point;

/**
 * The interaction manager deals with mouse, touch and pointer events.
 * 
 * Any DisplayObject can be interactive if its `interactive` property
 * is set to true.
 * 
 * This manager also supports multitouch.
 * 
 * An instance of this class is automatically created by default, and
 * can be found at `renderer.plugins.interaction`.
 * 
 * @event `InteractionEvent.CLICK` Fired when a pointer device button (usually a mouse left-button) is pressed and released on the display object.  
 * @event `InteractionEvent.MOUSE_DOWN` Fired when a pointer device button (usually a mouse left-button) is pressed on the display.
 * @event `InteractionEvent.MOUSE_MOVE` Fired when a pointer device (usually a mouse) is moved while over the display object.
 * @event `InteractionEvent.MOUSE_OUT` Fired when a pointer device (usually a mouse) is moved off the display object.
 * @event `InteractionEvent.MOUSE_OVER` Fired when a pointer device (usually a mouse) is moved onto the display object.
 * @event `InteractionEvent.MOUSE_UP` Fired when a pointer device button (usually a mouse left-button) is released over the display object.
 * @event `InteractionEvent.MOUSE_UP_OUTSIDE` Fired when a pointer device button (usually a mouse left-button) is released outside the display object that initially registered a **mousedown**.
 * @event `InteractionEvent.POINTER_CANCEL` Fired when the operating system cancels a pointer event.
 * @event `InteractionEvent.POINTER_DOWN` Fired when a pointer device button is pressed on the display object.
 * @event `InteractionEvent.POINTER_MOVE` Fired when a pointer device is moved while over the display object.
 * @event `InteractionEvent.POINTER_OUT` Fired when a pointer device is moved off the display object.
 * @event `InteractionEvent.POINTER_OVER` Fired when a pointer device is moved onto the display object.
 * @event `InteractionEvent.POINTER_TAP` Fired when a pointer device button is pressed and released on the display object.
 * @event `InteractionEvent.POINTER_UP` Fired when a pointer device button is released over the display object.
 * @event `InteractionEvent.POINTER_UP_OUTSIDE` Fired when a pointer device button is released outside the display object that initially registered a **pointerdown**.
 * @event `InteractionEvent.RIGHT_CLICK` Fired when a pointer device secondary button (usually a mouse right-button) is pressed and released on the display object.
 * @event `InteractionEvent.RIGHT_DOWN` Fired when a pointer device secondary button (usually a mouse right-button) is pressed on the display object.
 * @event `InteractionEvent.RIGHT_UP` Fired when a pointer device secondary button (usually a mouse right-button) is released over the display object.
 * @event `InteractionEvent.RIGHT_UP_OUTSIDE` Fired when a pointer device secondary button (usually a mouse right-button) is released outside the display object that initially registered a **rightdown**.
 * @event `InteractionEvent.TAP` Fired when a touch point is placed and removed from the display object.
 * @event `InteractionEvent.TOUCH_CANCEL` Fired when the operating system cancels a touch.
 * @event `InteractionEvent.TOUCH_END` Fired when a touch point is removed from the display object.
 * @event `InteractionEvent.TOUCH_END_OUTSIDE` Fired when a touch point is removed outside of the display object that initially registered a **touchstart**.
 * @event `InteractionEvent.TOUCH_MOVE` Fired when a touch point is moved along the display object.
 * @event `InteractionEvent.TOUCH_START` Fired when a touch point is placed on the display object.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.InteractionManager.html
 * @see Source code: http://pixijs.download/release/docs/packages_interaction_src_InteractionManager.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.InteractionManager")
extern class InteractionManager extends EventEmitter
{
    /**
     * Create a new InteractionManager instance.
     * @param renderer A reference to the current renderer.
     * @param options The options for the manager.
     */
    public function new(renderer:EitherType<CanvasRenderer, Renderer>, ?options:InteractionManagerOptions);

    /**
     * Should default browser actions automatically be prevented. Does not
     * apply to pointer events for backwards compatibility preventDefault
     * on pointer events stops mouse events from firing Thus, for every
     * pointer event, there will always be either a mouse of touch event
     * alongside it.  
     * Default: `true`
     */
    public var autoPreventDefault:Bool;

    /**
     * The mode of the cursor that is being used. The value of this is a
     * key from the cursorStyles dictionary.
     */
    public var currentCursorMode:String;

    /**
     * Dictionary of how different cursor modes are handled. Strings are
     * handled as CSS cursor values, objects are handled as dictionaries
     * of CSS values for interactionDOMElement, and functions are called
     * instead of changing the CSS. Default CSS cursor values are provided
     * for 'default' and 'pointer' modes.
     */
    public var cursorStyles:DynamicAccess<Dynamic>;

    /**
     * An event data object to handle all the event tracking/dispatching.
     */
    public var eventData:Dynamic;

    /**
     * Have events been attached to the dom element?
     */
    private var eventsAdded:Bool;

    /**
     * The DOM element to bind to.
     */
    private var interactionDOMElement:Element;

    /**
     * Maximum requency in milliseconds at which pointer over/out states
     * will be checked by tickerUpdate.  
     * Default: `10`
     */
    public var interactionFrequency:Int;

    /**
     * Last rendered object or temp object.
     */
    private var lastObjectRendered(default, null):DisplayObject;

    /**
     * The mouse data.
     */
    public var mouse:InteractionData;
    
    /**
     * Is the mouse hovering over the renderer?
     */
    private var mouseOverRenderer(default, null):Bool;

    /**
     * This property determines if mousemove and touchmove events are fired
     * only when the cursor is over the object. Setting to true will make
     * things work more in line with how the DOM version works. Setting to
     * false can make things easier for things like dragging It is currently
     * set to false as this is how PixiJS used to work. This will be set to
     * true in future versions of pixi.  
     * Default: `false`
     */
    public var moveWhenInside:Bool;

    /**
     * The renderer this interaction manager works for.
     */
    public var renderer:AbstractRenderer;

    /**
     * The current resolution / device pixel ratio.  
     * Default: `1`
     */
    public var resolution:Float;

    /**
     * Does the device support pointer events https://www.w3.org/Submission/pointer-events/
     */
    public var supportsPointerEvents(default, null):Bool;

    /**
     * Does the device support touch events https://www.w3.org/TR/touch-events/
     */
    public var supportsTouchEvents(default, null):Bool;

    /**
     * Has the system ticker been added?
     */
    private var tickerAdded(default, null):Bool;

    /**
     * Should the InteractionManager automatically add tickerUpdate to
     * [`Ticker.system`](http://pixijs.download/release/docs/PIXI.Ticker_.html#.system).  
     * Default: `true`
     */
    public var useSystemTicker:Bool;

    /**
     * Destroys the interaction manager.
     */
    public function destroy():Void;

    /**
     * Hit tests a point against the display tree, returning the
     * first interactive object that is hit.
     * @param globalPoint A point to hit test with, in global space.
     * @param root The root display object to start from. If omitted,
     *             defaults to the last rendered root of the associated
     *             renderer.
     * @return The hit display object, if any.
     */
    public function hitTest(globalPoint:Point, ?root:Container):DisplayObject;

    /**
     * Maps x and y coords from a DOM object and maps them correctly
     * to the PixiJS view. The resulting value is stored in the point.
     * This takes into account the fact that the DOM element could be
     * scaled and positioned anywhere on the screen.
     * @param point The point that the result will be stored in.
     * @param x The x coord of the position to map.
     * @param y The y coord of the position to map.
     */
    public function mapPositionToPoint(point:IPointData, x:Float, y:Float):Void;

    /**
     * This function is provides a neat way of crawling through the
     * scene graph and running a specified function on all interactive
     * objects it finds. It will also take care of hit testing the
     * interactive objects and passes the hit across in the function.
     * @param interactionEvent Event containing the point that is tested for collision.
     * @param displayObject The displayObject that will be hit test.
     *                      (Recursively crawls its children)
     * @param func The function that will be called on each interactive
     *             object. The interactionEvent, displayObject and hit
     *             will be passed to the function.
     * @param hitTest Indicates whether we want to calculate hits or
     *                just iterate through all interactive objects.
     */
    private function processInteractive(interactionEvent:InteractionEvent, displayObject:EitherType<Container,EitherType<Sprite,TilingSprite>>, ?func:Function, ?hitTest:Bool):Void;

    /**
     * Sets the current cursor mode, handling any callbacks or CSS style changes.
     * @param mode Cursor mode, a key from the cursorStyles dictionary.
     */
    public function setCursorMode(mode:String):Void;

    /**
     * Sets the DOM element which will receive mouse/touch events. This
     * is useful for when you have other DOM elements on top of the
     * renderers Canvas element. With this you'll be bale to delegate
     * another DOM element to receive those events.
     * @param element 
     * @param resolution 
     */
    public function setTargetElement(element:Element, ?resolution:Float):Void;

    /**
     * Updates the state of interactive objects if at least interactionFrequency
     * milliseconds have passed since the last invocation.
     * 
     * Invoked by a throttled ticker update from
     * [Ticker.system](http://pixijs.download/release/docs/PIXI.Ticker_.html#.system).
     * 
     * @param deltaTime Time delta since the last call.
     */
    public function tickerUpdate(deltaTime:Float):Void;

    /**
     * Updates the state of interactive objects.
     */
    public function update():Void;
}

/**
 * The options of InteractionManager.
 */
typedef InteractionManagerOptions =
{
    /**
     * Should the manager automatically prevent default browser actions.  
     * Default: `true`
     */
    @:optional var autoPreventDefault:Bool;

    /**
     * Maximum requency (ms) at pointer over/out states will be checked.  
     * Default: `10`
     */
    @:optional var interactionFrequency:Int;

    /**
     * Whether to add tickerUpdate to `Pixi.Ticker.system`.  
     * Default: `true`
     */
    @:optional var useSystemTicker:Bool;
}