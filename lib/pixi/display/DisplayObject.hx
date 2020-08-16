package pixi.display;

import haxe.extern.EitherType;
import pixi.events.EventEmitter;
import pixi.enums.CursorType;
import pixi.filters.Filter;
import pixi.geom.Bounds;
import pixi.geom.IHitArea;
import pixi.geom.Matrix;
import pixi.geom.ObservablePoint;
import pixi.geom.Point;
import pixi.geom.Rectangle;
import pixi.geom.Transform;
import pixi.render.MaskData;

/**
 * The base class for all objects that are rendered on the screen.  
 * This is an abstract class and should not be used on its own; rather it should b e extended.
 * 
 * @event `DisplayObjectEvent.ADDED` Fired when this DisplayObject is added to a Container. 
 * @event `DisplayObjectEvent.REMOVED` Fired when this DisplayObject is removed from a Container.
 * @event `DisplayObjectEvent.CLICK` Fired when a pointer device button (usually a mouse left-button) is pressed and released on the display object.
 * @event `DisplayObjectEvent.MOUSE_DOWN` Fired when a pointer device button (usually a mouse left-button) is pressed on the display.
 * @event `DisplayObjectEvent.MOUSE_MOVE` Fired when a pointer device (usually a mouse) is moved while over the display object.
 * @event `DisplayObjectEvent.MOUSE_OUT` Fired when a pointer device (usually a mouse) is moved off the display object.
 * @event `DisplayObjectEvent.MOUSE_OVER` Fired when a pointer device (usually a mouse) is moved onto the display object.
 * @event `DisplayObjectEvent.MOUSE_UP` Fired when a pointer device button (usually a mouse left-button) is released over the display object.
 * @event `DisplayObjectEvent.MOUSE_UP_OUTSIDE` Fired when a pointer device button (usually a mouse left-button) is released outside the display object that initially registered a **mousedown**.
 * @event `DisplayObjectEvent.POINTER_CANCEL` Fired when the operating system cancels a pointer event.
 * @event `DisplayObjectEvent.POINTER_DOWN` Fired when a pointer device button is pressed on the display object.
 * @event `DisplayObjectEvent.POINTER_MOVE` Fired when a pointer device is moved while over the display object.
 * @event `DisplayObjectEvent.POINTER_OUT` Fired when a pointer device is moved off the display object.
 * @event `DisplayObjectEvent.POINTER_OVER` Fired when a pointer device is moved onto the display object.
 * @event `DisplayObjectEvent.POINTER_TAP` Fired when a pointer device button is pressed and released on the display object.
 * @event `DisplayObjectEvent.POINTER_UP` Fired when a pointer device button is released over the display object.
 * @event `DisplayObjectEvent.POINTER_UP_OUTSIDE` Fired when a pointer device button is released outside the display object that initially registered a **pointerdown**.
 * @event `DisplayObjectEvent.RIGHT_CLICK` Fired when a pointer device secondary button (usually a mouse right-button) is pressed and released on the display object.
 * @event `DisplayObjectEvent.RIGHT_DOWN` Fired when a pointer device secondary button (usually a mouse right-button) is pressed on the display object.
 * @event `DisplayObjectEvent.RIGHT_UP` Fired when a pointer device secondary button (usually a mouse right-button) is released over the display object.
 * @event `DisplayObjectEvent.RIGHT_UP_OUTSIDE` Fired when a pointer device secondary button (usually a mouse right-button) is released outside the display object that initially registered a **rightdown**.
 * @event `DisplayObjectEvent.TAP` Fired when a touch point is placed and removed from the display object.
 * @event `DisplayObjectEvent.TOUCH_CANCEL` Fired when the operating system cancels a touch.
 * @event `DisplayObjectEvent.TOUCH_END` Fired when a touch point is removed from the display object.
 * @event `DisplayObjectEvent.TOUCH_END_OUTSIDE` Fired when a touch point is removed outside of the display object that initially registered a **touchstart**.
 * @event `DisplayObjectEvent.TOUCH_MOVE` Fired when a touch point is moved along the display object.
 * @event `DisplayObjectEvent.TOUCH_START` Fired when a touch point is placed on the display object.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.DisplayObject.html
 * @see Source code: http://pixijs.download/release/docs/packages_display_src_DisplayObject.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.DisplayObject")
extern class DisplayObject extends EventEmitter
{
    /**
     * Create a new DisplayObject instance.
     */
    public function new();

    /**
     * TODO Needs docs.
     */
    private var _accessibleActive:Bool;

    /**
     * TODO Needs docs.
     */
    private var _accessibleDiv:Bool;

    /**
     * The bounds object, this is used to calculate and store the bounds of the displayObject.
     */
    private var _bounds:Bounds;

    /**
     * Flags the cached bounds as dirty.
     */
    private var _boundsID:Int;

    /**
     * Cache of this display-object's bounds-rectangle.
     */
    private var _boundsRect:Bounds;

    /**
     * If the object has been destroyed via destroy(). If true, it should not be used.
     */
    private var _destroyed:Bool;

    /**
     * Currently enabled filters.
     */
    private var _enabledFilters:Array<Filter>;

    /**
     * Which index in the children array the display component was before the previous zIndex sort.
     * Used by containers to help sort objects with the same zIndex, by using previous array index as the decider.
     */
    private var _lastSortedIndex:Int;

    /**
     * Local bounds object, swapped with `_bounds` when using `getLocalBounds()`.
     */
    private var _localBounds:Bounds;

    /**
     * Cache of this display-object's local-bounds rectangle.
     */
    private var _localBoundsRect:Bounds;

    /**
     * The original, cached mask of the object.
     */
    private var _mask:EitherType<Container,MaskData>;

    private var _tempDisplayObjectParent:Container;

    /**
     * The zIndex of the displayObject.
     * A higher value will mean it will be rendered on top of other displayObjects within the same container.
     */
    private var _zIndex:Float;

    /**
     * Flag for if the object is accessible.
     * If true AccessibilityManager will overlay a shadow div with attributes set.
     */
    public var accessible:Bool;

    /**
     * Setting to false will prevent any children inside this container to be accessible.  
     * Default: `true`
     */
    public var accessibleChildren:Bool;

    /**
     * Sets the aria-label attribute of the shadow div.
     */
    public var accessibleHint:String;

    /**
     * Specify the pointer-events the accessible div will use Defaults to auto.  
     * Default: `auto`
     */
    public var accessiblePointerEvents:String;

    /**
     * Sets the title attribute of the shadow div If accessibleTitle AND accessibleHint has
     * not been this will default to 'displayObject [tabIndex]'.
     */
    public var accessibleTitle:String;

    /**
     * Specify the type of div the accessible layer is.
     * Screen readers treat the element differently depending on this type. Defaults to button.  
     * Default: `button`
     */
    public var accessibleType:String;

    /**
     * The opacity of the object.
     */
    public var alpha:Float;

    /**
     * The angle of the object in degrees. 'rotation' and 'angle' have the same effect on a
     * display object; rotation is in radians, angle is in degrees.
     */
    public var angle:Float;

    /**
     * If enabled, the mouse cursor use the pointer behavior when hovered over the
     * displayObject if it is interactive Setting this changes the 'cursor' property
     * to `'pointer'`.
     * 
     * Example:
     * ```
     * var sprite = new Sprite(texture);
     * sprite.interactive = true;
     * sprite.buttonMode = true;
     * ```
     */
    public var buttonMode:Bool;

    /**
     * Set this to true if you want this display object to be cached as a bitmap.
     * This basically takes a snap shot of the display object as it is at that moment.
     * It can provide a performance benefit for complex static displayObjects.
     * To remove simply set this property to `false`.
     * 
     * IMPORTANT GOTCHA - Make sure that all your textures are preloaded BEFORE
     * setting this property to true as it will take a snapshot of what is currently
     * there. If the textures have not loaded then they will not appear.
     */
    public var cacheAsBitmap:Bool;
    
    /**
     * This defines what cursor mode is used when the mouse cursor is hovered over the displayObject.
     * 
     * Example:
     * ```
     * var sprite = new Sprite(texture);
     * sprite.interactive = true;
     * sprite.cursor = CursorType.WAIT;
     * ```
     */
    public var cursor:CursorType;

    /**
     * The area the filter is applied to. This is used as more of an optimization
     * rather than figuring out the dimensions of the displayObject each frame you
     * can set this rectangle.
     * 
     * Also works as an interaction mask.
     */
    public var filterArea:Rectangle;

    /**
     * Sets the filters for the displayObject.
     * - IMPORTANT: This is a WebGL only feature and will be ignored by the canvas
     *   renderer. To remove filters simply set this property to `null`.
     */
    public var filters:Array<Filter>;

    /**
     * Interaction shape. Children will be hit first, then this shape will be checked.
     * Setting this will cause this shape to be checked in hit tests rather than the
     * displayObject's bounds.
     * 
     * Example:
     * ```
     * var sprite = new Sprite(texture);
     * sprite.interactive = true;
     * sprite.hitArea = new Rectangle(0, 0, 100, 100);
     * ```
     */
    public var hitArea:IHitArea;

    /**
     * Enable interaction events for the DisplayObject. Touch, pointer and mouse events
     * will not be emitted unless `interactive` is set to `true`.
     * 
     * Example:
     * ```
     * const sprite = new Sprite(texture);
     * sprite.interactive = true;
     * sprite.on('tap', (event) => {
     *     //handle event
     * });
     * ```
     */
    public var interactive:Bool;

    /**
     * Does any other displayObject use this object as a mask?
     */
    public var isMask:Bool;

    /**
     * Used to fast check if a sprite is.. a sprite!
     */
    public var isSprite:Bool;

    /**
     * Current transform of the object based on local factors: position, scale, other stuff.
     */
    public var localTransform(default, null):Matrix;

    /**
     * Sets a mask for the displayObject. A mask is an object that limits the visibility
     * of an object to the shape of the mask applied to it. In PixiJS a regular mask must
     * be a `pixi.Graphics` or a `pixi.Sprite` object. This allows for much faster masking
     * in canvas as it utilities shape clipping. To remove a mask, set this property to `null`.
     * 
     * For sprite mask both alpha and red channel are used. Black mask is the same as
     * transparent mask.
     * 
     * TODO At the moment, PIXI.CanvasRenderer doesn't support pixi.Sprite as mask.
     * 
     * Example:
     * ```
     * var graphics = new Graphics();
     * graphics.beginFill(0xFF3300);
     * graphics.drawRect(50, 250, 100, 100);
     * graphics.endFill();
     * 
     * var sprite = new Sprite(texture);
     * sprite.mask = graphics;
     * ```
     */
    public var mask:EitherType<Container,MaskData>;

    /**
     * The instance name of the object.
     */
    public var name:String;

    /**
     * The display object container that contains this display object.
     */
    public var parent:Container;

    /**
     * The pivot point of the displayObject that it rotates around.
     * Assignment by value since pixi-v4.
     */
    public var pivot:ObservablePoint;

    /**
     * The coordinate of the object relative to the local coordinates of the parent.
     * Assignment by value since pixi-v4.
     */
    public var position:ObservablePoint;

    /**
     * Can this object be rendered, if false the object will not be drawn but the
     * updateTransform methods will still be called.
     * 
     * Only affects recursive calls from parent. You can ask for bounds manually.
     */
    public var renderable:Bool;

    /**
     * The rotation of the object in radians. 'rotation' and 'angle' have the same
     * effect on a display object; rotation is in radians, angle is in degrees.
     */
    public var rotation:Float;

    /**
     * The scale factor of the object. Assignment by value since pixi-v4.
     */
    public var scale:ObservablePoint;

    /**
     * The skew factor for the object in radians. Assignment by value since pixi-v4.
     */
    public var skew:ObservablePoint;

    /**
     * World transform and local transform of this object. This will become read-only
     * later, please do not assign anything there unless you know what are you doing.
     */
    public var transform:Transform;

    /**
     * The visibility of the object. If false the object will not be drawn, and the
     * updateTransform function will not be called.
     * 
     * Only affects recursive calls from parent. You can ask for bounds or call
     * updateTransform manually.
     */
    public var visible:Bool;

    /**
     * The multiplied alpha of the displayObject.
     */
    public var worldAlpha(default, null):Float;

    /**
     * Current transform of the object based on world (parent) factors.
     */
    public var worldTransform(default, null):Matrix;

    /**
     * Indicates if the object is globally visible.
     */
    public var worldVisible(default, null):Bool;

    /**
     * The position of the displayObject on the x axis relative to the local
     * coordinates of the parent. An alias to position.x
     */
    public var x:Float;

    /**
     * The position of the displayObject on the y axis relative to the local
     * coordinates of the parent. An alias to position.y
     */
    public var y:Float;

    /**
     * The zIndex of the displayObject. If a container has the sortableChildren
     * property set to true, children will be automatically sorted by zIndex
     * value; a higher value will mean it will be moved towards the end of the
     * array, and thus rendered on top of other displayObjects within the same
     * container.
     */
    public var zIndex:Float;

    /**
     * Mixes all enumerable properties and methods from a source object to DisplayObject.
     * @param source The source of properties and methods to mix in.
     */
    static public function mixin(source:Dynamic):Void;

    /**
     * Recursively updates transform of all objects from the root to this one
     * internal function for toLocal().
     */
    private function _recursivePostUpdateTransform():Void;

    /**
     * Base destroy method for generic display objects. This will automatically
     * remove the display object from its parent Container as well as remove all
     * current event listeners and internal references. Do not use a DisplayObject
     * after calling `destroy()`.
     */
    public function destroy():Void;

    /**
     * Pair method for `enableTempParent`.
     * @param cacheParent Actual parent of element.
     */
    public function disableTempParent(cacheParent:DisplayObject):Void;

    /**
     * DisplayObject default updateTransform, does not update children of container.
     * Will crash if there's no parent element.
     */
    public function displayObjectUpdateTransform():Void;

    /**
     * Used in Renderer, cacheAsBitmap and other places where you call an `updateTransform` on root.
     * ```
     * var cacheParent = elem.enableTempParent();
     * elem.updateTransform();
     * elem.disableTempParent(cacheParent);
     * ```
     * @return Current parent.
     */
    public function enableTempParent():DisplayObject;

    /**
     * Retrieves the bounds of the displayObject as a rectangle object.
     * @param skipUpdate Setting to `true` will stop the transforms of the scene graph
     *                   from being updated. This means the calculation returned MAY
     *                   be out of date BUT will give you a nice performance boost.
     * @param rect Optional rectangle to store the result of the bounds calculation.
     * @return The rectangular bounding area.
     */
    public function getBounds(?skipUpdate:Bool, ?rect:Rectangle):Rectangle;

    /**
     * Returns the global position of the displayObject. Does not depend on object
     * scale, rotation and pivot.
     * @param point The point to write the global value to. Default: `new Point()`
     * @param skipUpdate Setting to true will stop the transforms of the scene graph
     *                   from being updated. This means the calculation returned MAY
     *                   be out of date BUT will give you a nice performance boost.
     *                   Default: `false`
     * @return The updated point.
     */
    public function getGlobalPosition(?point:Point, ?skipUpdate:Bool):Point;
    
    /**
     * Retrieves the local bounds of the displayObject as a rectangle object.
     * @param rect Optional rectangle to store the result of the bounds calculation.
     * @return The rectangular bounding area.
     */
    public function getLocalBounds(?rect:Rectangle):Rectangle;

    /**
     * Set the parent Container of this DisplayObject.
     * @param container The Container to add this DisplayObject to.
     * @return The Container that this DisplayObject was added to.
     */
    public function setParent(container:Container):Container;

    /**
     * Convenience function to set the position, scale, skew and pivot at once.
     * @param x The X position. Default: `0`
     * @param y The Y position. Default: `0`
     * @param scaleX The X scale value. Default: `1`
     * @param scaleY The Y scale value. Default: `1`
     * @param rotation The rotation. Default: `0`
     * @param skewX The X skew value. Default: `0`
     * @param skewY The Y skew value. Default: `0`
     * @param pivotX The X pivot value. Default: `0`
     * @param pivotY The Y pivot value. Default: `0`
     * @return The DisplayObject instance.
     */
    public function setTransform(   ?x:Float, 
                                    ?y:Float,
                                    ?scaleX:Float,
                                    ?scaleY:Float,
                                    ?rotation:Float,
                                    ?skewX:Float,
                                    ?skewY:Float,
                                    ?pivotX:Float,
                                    ?pivotY:Float
    ):DisplayObject;

    /**
     * Calculates the global position of the display object.
     * @param position The world origin to calculate from.
     * @param point A Point object in which to store the value, optional (otherwise will create a new Point).
     * @param skipUpdate Should we skip the update transform. Default: `false`
     * @return A point object representing the position of this object.
     */
    public function toGlobal(position:IPointData, ?point:Point, ?skipUpdate:Bool):Point;

    /**
     * Calculates the local position of the display object relative to another point.
     * @param position The world origin to calculate from.
     * @param from The DisplayObject to calculate the global position from.
     * @param point A Point object in which to store the value, optional (otherwise will create a new Point).
     * @param skipUpdate Should we skip the update transform. Default: `false`
     * @return A point object representing the position of this object.
     */
    public function toLocal(position:IPointData, ?from:DisplayObject, ?point:Point, ?skipUpdate:Bool):Point;

    /**
     * Updates the object transform for rendering.
     * 
     * TODO - Optimization pass!
     */
    public function updateTransform():Void;
}