package pixi.display;

import js.lib.Float32Array;
import js.lib.Uint16Array;
import pixi.enums.DrawMode;
import pixi.textures.Texture;

/**
 * The Simple Mesh class mimics Mesh in PixiJS v4, providing easy-to-use
 * constructor arguments. For more robust customization, use [Mesh](http://pixijs.download/release/docs/PIXI.Mesh.html).
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
 * @see Documentation: http://pixijs.download/release/docs/PIXI.SimpleMesh.html
 * @see Source code: http://pixijs.download/release/docs/packages_mesh-extras_src_SimpleMesh.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.SimpleMesh")
extern class SimpleMesh extends Mesh
{
     /**
      * Create a new SimpleMesh instance.
      * @param texture The texture to use. Default: `Texture.EMPTY`
      * @param vertices If you want to specify the vertices.
      * @param uvs If you want to specify the uvs.
      * @param indices If you want to specify the indices.
      * @param drawMode The drawMode, can be any of the Mesh.DRAW_MODES consts.
      */
    public function new(    ?texture:Texture,
                            ?vertices:Float32Array,
                            ?uvs:Float32Array,
                            ?indices:Uint16Array,
                            drawMode:DrawMode
    );

    /**
     * Upload vertices buffer each frame.
     */
    public var autoUpdate:Bool;

    /**
     * Triangles in canvas mode are automatically antialiased, use this value
     * to force triangles to overlap a bit with each other. To set the global
     * default, set [Settings.MESH_CANVAS_PADDING](http://pixijs.download/release/docs/PIXI.settings.html#.MESH_CANVAS_PADDING).
     * 
     * Default: `0`
     */
    public var canvasPadding:Float;

    /**
     * Collection of vertices data.
     */
    public var vertices:Float32Array;
}