package pixi.display;

import haxe.extern.EitherType;
import haxe.extern.Rest;
import pixi.geom.Rectangle;
import pixi.render.CanvasRenderer;
import pixi.render.Renderer;

/**
 * A Container represents a collection of display objects.
 * 
 * It is the base class of all display objects that act as a container for
 * other objects. (Like Sprites)
 * 
 * Example:
 * ```
 * var container = new Container();
 * container.addChild(sprite);
 * ```
 * @event `PixiEvent.ADDED` Fired when this DisplayObject is added to a Container. 
 * @event `PixiEvent.REMOVED` Fired when this DisplayObject is removed from a Container.
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
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Container.html
 * @see Source code: http://pixijs.download/release/docs/packages_display_src_Container.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Container")
extern class Container extends DisplayObject
{
    /**
     * Create a new Container instance.
     */
    public function new();

    /**
     * The width of the Container, setting this will actually modify the
     * scale to achieve the value set.
     */
    public var width:Float;

    /**
     * The height of the Container, setting this will actually modify the
     * scale to achieve the value set.
     */
    public var height:Float;

    /**
     * Determines if the children to the displayObject can be clicked/touched
     * Setting this to false allows PixiJS to bypass a recursive `hitTest` function.
     */
    public var interactiveChildren:Bool;

    /**
     * If set to true, the container will sort its children by zIndex value
     * when updateTransform() is called, or manually if sortChildren() is called.
     * 
     * This actually changes the order of elements in the array, so should be
     * treated as a basic solution that is not performant compared to other
     * solutions, such as @link https://github.com/pixijs/pixi-display.
     * 
     * Also be aware of that this may not work nicely with the addChildAt()
     * function, as the zIndex sorting may cause the child to automatically
     * sorted to another position.
     * 
     * @see http://pixijs.download/release/docs/PIXI.settings.html#.SORTABLE_CHILDREN
     */
    public var sortableChildren:Bool;

    /**
     * Should children be sorted by zIndex at the next updateTransform call.
     * Will get automatically set to true if a new child is added, or if a
     * child's zIndex changes.
     */
    public var sortDirty:Bool;

    /**
     * Recalculates the bounds of the object. Override this to calculate the
     * bounds of the specific object (not including children).
     */
    private function _calculateBounds():Void;

    /**
     * To be overridden by the subclasses.
     * @param renderer The renderer.
     */
    private function _render(renderer:Renderer):Void;

    /**
     * To be overridden by the subclass.
     * @param renderer The renderer.
     */
    private function _renderCanvas(renderer:CanvasRenderer):Void;

    /**
     * Adds one or more children to the container.  
     * Multiple items can be added like so: `myContainer.addChild(thingOne, thingTwo, thingThree)`.
     * @param children The DisplayObject(s) to add to the container.
     * @return The first child that was added.
     */
    @:overload(function(childrens:Rest<DisplayObject>):DisplayObject{})
    public function addChild(children:DisplayObject):DisplayObject;

    /**
     * Adds a child to the container at a specified index.
     * If the index is out of bounds an error will be thrown.
     * @param child The child to add.
     * @param index The index to place the child in.
     * @return The child that was added.
     */
    public function addChildAt(child:DisplayObject, index:Int):DisplayObject;

    /**
     * Recalculates the bounds of the container.
     */
    public function calculateBounds():Void;

    /**
     * Container default updateTransform, does update children of container.
     * Will crash if there's no parent element.
     */
    public function containerUpdateTransform():Void;

    /**
     * Removes all internal references and listeners as well as removes children
     * from the display list. Do not use a Container after calling destroy.
     * @param options Options parameter. A boolean will act as if all options have
     *                been set to that value.
     */
    override public function destroy(?options:EitherType<Bool, ContainerDestroyOptions>):Void;

    /**
     * Returns the child at the specified index.
     * @param index The index to get the child at.
     * @return The child at the given index, if any.
     */
    public function getChildAt(index:Int):DisplayObject;

    /**
     * Returns the display object in the container.  
     * Recursive searches are done in a preorder traversal.
     * @param name Instance name.
     * @param deep Whether to search recursively. Default: `false`
     * @return The child with the specified name.
     */
    public function getChildByName(name:String, ?deep:Bool):DisplayObject;

    /**
     * Returns the index position of a child DisplayObject instance.
     * @param child The DisplayObject instance to identify.
     * @return The index position of the child display object to identify.
     */
    public function getChildIndex(child:DisplayObject):Int;

    /**
     * Retrieves the local bounds of the displayObject as a rectangle object.
     * @param rect Optional rectangle to store the result of the bounds calculation.
     * @param skipChildrenUpdate Setting to `true` will stop re-calculation of children
     *                           transforms, it was default behaviour of pixi 4.0-5.2
     *                           and caused many problems to users.
     * @return The rectangular bounding area.
     */
    override public function getLocalBounds(rect:Rectangle, ?skipChildrenUpdate:Bool):Rectangle;

    /**
     * Overridable method that can be used by Container subclasses
     * whenever the children array is modified.
     */
    private function onChildrenChange():Void;

    /**
     * Removes one or more children from the container.
     * @param children The DisplayObject(s) to remove.
     * @return The first child that was removed.
     */
    @:overload(function(childrens:Rest<DisplayObject>):DisplayObject{})
    public function removeChild(children:DisplayObject):DisplayObject;

    /**
     * Removes a child from the specified index position.
     * @param index The index to get the child from.
     * @return The child that was removed.
     */
    public function removeChildAt(index:Int):DisplayObject;

    /**
     * Removes all children from this container that are within the begin and end indexes.
     * @param beginIndex The beginning position. Default: `0`
     * @param endIndex The ending position. Default value is size of the container. Default: `this.children.length`
     * @return List of removed children.
     */
    public function removeChildren(?beginIndex:Int, ?endIndex:Int):Array<DisplayObject>;

    /**
     * Renders the object using the WebGL renderer.
     * @param renderer The renderer.
     */
    public function render(renderer:Renderer):Void;

    /**
     * Render the object using the WebGL renderer and advanced features.
     * @param renderer The renderer.
     */
    private function renderAdvanced(renderer:Renderer):Void;

    /**
     * Renders the object using the Canvas renderer.
     * @param renderer The renderer.
     */
    public function renderCanvas(renderer:CanvasRenderer):Void;

    /**
     * Changes the position of an existing child in the display object container.
     * @param child The child DisplayObject instance for which you want to change the index number.
     * @param index The resulting index number for the child display object.
     */
    public function setChildIndex(child:DisplayObject, index:Int):Void;

    /**
     * Sorts children by zIndex.
     * Previous order is mantained for 2 children with the same zIndex.
     */
    public function sortChildren():Void;

    /**
     * Swaps the position of 2 Display Objects within this container.
     * @param child First display object to swap.
     * @param child2 Second display object to swap.
     */
    public function swapChildren(child:DisplayObject, child2:DisplayObject):Void;

    /**
     * Updates the transform on all children of this container for rendering.
     */
    override public function updateTransform():Void;
}

/**
 * The options of `Container.destroy()` method.
 */
typedef ContainerDestroyOptions =
{
    /**
     * If set to true, all the children will have their destroy method called
     * as well. 'options' will be passed on to those calls.  
     * Default: `false`
     */
    @:optional var children:Bool;

    /**
     * Only used for child Sprites if options.children is set to true Should it
     * destroy the texture of the child sprite.  
     * Default: `false`
     */
    @:optional var texture:Bool;

    /**
     * Only used for child Sprites if options.children is set to true Should it
     * destroy the base texture of the child sprite.  
     * Default: `false`
     */
    @:optional var baseTexture:Bool;
} 