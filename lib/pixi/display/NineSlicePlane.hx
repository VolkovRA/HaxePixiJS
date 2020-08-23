package pixi.display;

import pixi.textures.Texture;

/**
 * The NineSlicePlane allows you to stretch a texture using 9-slice
 * scaling. The corners will remain unscaled (useful for buttons with
 * rounded corners for example) and the other areas will be scaled
 * horizontally and or vertically.
 * 
 * Example:
 * ```
 * var Plane9 = new NineSlicePlane(Texture.from('BoxWithRoundedCorners.png'), 15, 15, 15, 15);
 * ```
 * 
 * ```
 *      A                          B
 *    +---+----------------------+---+
 *  C | 1 |          2           | 3 |
 *    +---+----------------------+---+
 *    |   |                      |   |
 *    | 4 |          5           | 6 |
 *    |   |                      |   |
 *    +---+----------------------+---+
 *  D | 7 |          8           | 9 |
 *    +---+----------------------+---+
 *  When changing this objects width and/or height:
 *     areas 1 3 7 and 9 will remain unscaled.
 *     areas 2 and 8 will be stretched horizontally
 *     areas 4 and 6 will be stretched vertically
 *     area 5 will be stretched both horizontally and vertically
 * ```
 * 
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
 * @see Documentation: http://pixijs.download/release/docs/PIXI.NineSlicePlane.html
 * @see Source code: http://pixijs.download/release/docs/packages_mesh-extras_src_NineSlicePlane.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.NineSlicePlane")
extern class NineSlicePlane extends SimplePlane
{
    /**
     * Create a new NineSlicePlane instance.
     * @param texture The texture to use on the NineSlicePlane.
     * @param leftWidth Size of the left vertical bar (A).
     * @param topHeight Size of the top horizontal bar (C).
     * @param rightWidth Size of the right vertical bar (B).
     * @param bottomHeight Size of the bottom horizontal bar (D).
     */
    public function new(    texture:Texture,
                            ?leftWidth:Float,
                            ?topHeight:Float,
                            ?rightWidth:Float,
                            ?bottomHeight:Float
    );

    /**
     * The height of the NineSlicePlane, setting this will actually modify
     * the vertices and UV's of this plane.
     */
    public var _height:Float;

    /**
     * The width of the NineSlicePlane, setting this will actually modify
     * the vertices and UV's of this plane.
     */
    public var _width:Float;

    /**
     * The height of the top row.
     */
    public var topHeight:Float;

    /**
     * The height of the bottom row.
     */
    public var bottomHeight:Float;

    /**
     * The width of the left column.
     */
    public var leftWidth:Float;

    /**
     * The width of the right column.
     */
    public var rightWidth:Float;

    /**
     * Refreshes NineSlicePlane coords. All of them.
     */
    private function _refresh():Void;

    /**
     * Updates the horizontal vertices.
     */
    public function updateHorizontalVertices():Void;

    /**
     * Updates the vertical vertices.
     */
    public function updateVerticalVertices():Void;
}