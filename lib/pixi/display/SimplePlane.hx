package pixi.display;

import pixi.textures.Texture;

/**
 * The SimplePlane allows you to draw a texture across several points
 * and then manipulate these points.
 * 
 * Example:
 * ```
 * for (let i = 0; i < 20; i++) {
 *     points.push(new Point(i * 50, 0));
 * };
 * var SimplePlane = new SimplePlane(Texture.from("snake.png"), points);
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
 * @see Documentation: http://pixijs.download/release/docs/PIXI.SimplePlane.html
 * @see Source code: http://pixijs.download/release/docs/packages_mesh-extras_src_SimplePlane.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.SimplePlane")
extern class SimplePlane extends Mesh
{
    /**
     * Create a new SimplePlane instance.
     * @param texture The texture to use on the SimplePlane.
     * @param verticesX The number of vertices in the x-axis.
     * @param verticesY The number of vertices in the y-axis.
     */
    public function new(texture:Texture, verticesX:Float, verticesY:Float);

    /**
     * Method used for overrides, to do something in case texture
     * frame was changed. Meshes based on plane can override it and
     * change more details based on texture.
     */
    public function textureUpdated():Void;
}