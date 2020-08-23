package pixi.display;

import haxe.extern.EitherType;
import js.html.CanvasElement;
import pixi.enums.BlendMode;
import pixi.enums.DrawMode;
import pixi.filters.MeshMaterial;
import pixi.filters.Shader;
import pixi.geom.Geometry;
import pixi.geom.Point;
import pixi.textures.Texture;
import pixi.render.CanvasRenderer;
import pixi.render.Renderer;
import pixi.render.State;
import pixi.utils.Buffer;

/**
 * Base mesh class.
 * 
 * This class empowers you to have maximum flexibility to render any
 * kind of WebGL visuals you can think of. This class assumes a certain
 * level of WebGL knowledge. If you know a bit this should abstract
 * enough away to make you life easier!
 * 
 * Pretty much ALL WebGL can be broken down into the following:
 * 1. Geometry - The structure and data for the mesh. This can include
 *    anything from positions, uvs, normals, colors etc..
 * 2. Shader - This is the shader that PixiJS will render the geometry
 *    with (attributes in the shader must match the geometry)
 * 3. State - This is the state of WebGL required to render the mesh.
 * 
 * Through a combination of the above elements you can render anything
 * you want, 2D or 3D!
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
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Mesh.html
 * @see Source code: http://pixijs.download/release/docs/packages_mesh_src_Mesh.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Mesh")
extern class Mesh extends Container
{
    /**
     * Create a new Mesh instance.
     * @param geometry The geometry the mesh will use.
     * @param shader The shader the mesh will use.
     * @param state The state that the WebGL context is required to be in to render
     *              the mesh if no state is provided, uses `State.for2d` to create
     *              a 2D state for PixiJS.
     * @param drawMode The drawMode, can be any of the PIXI.DRAW_MODES consts. Default: `DrawMode.TRIANGLES`
     */
    public function new(geometry:Geometry, shader:MeshMaterial, ?state:State, ?drawMode:DrawMode);

    /**
     * The maximum number of vertices to consider batchable.
     * Generally, the complexity of the geometry.
     */
    static public var BATCHABLE_SIZE:Int;

    /**
     * Cached tint value so we can tell when the tint is changed.
     */
    private var _cachedTint:Int;

    /**
     * Cached tinted texture.
     */
    private var _tintedCanvas:CanvasElement;

    /**
     * The blend mode to be applied to the Mesh.
     * Apply a value of `BlendMode.NORMAL` to reset the blend mode.  
     * Default: `BlendMode.NORMAL`
     */
    public var blendMode:BlendMode;

    /**
     * The way the Mesh should be drawn, can be any of the `Pixi.DRAW_MODES` constants.  
     */
    public var drawMode:DrawMode;

    /**
     * Includes vertex positions, face indices, normals, colors, UVs, and custom
     * attributes within buffers, reducing the cost of passing all this data to
     * the GPU. Can be shared between multiple Mesh objects.
     */
    public var geometry(default, null):Geometry;

    /**
     * Alias for `Mesh.shader`.
     */
    public var material:MeshMaterial;

    /**
     * If true PixiJS will Math.floor() x/y values when rendering, stopping pixel
     * interpolation. Advantages can include sharper image quality (like text)
     * and faster rendering on canvas. The main disadvantage is movement of objects
     * may appear less smooth. To set the global default, change `Settings.ROUND_PIXELS`.
     * Default: `false`
     */
    public var roundPixels:Bool;

    /**
     * Represents the vertex and fragment shaders that processes the geometry and
     * runs on the GPU. Can be shared between multiple Mesh objects.
     */
    public var shader:Shader;

    /**
     * How much of the geometry to draw, by default `0` renders everything.  
     * Default: `0`
     */
    public var size:Float;

    /**
     * Typically the index of the IndexBuffer where to start drawing.  
     * Default: `0`
     */
    public var start:Int;

    /**
     * Represents the WebGL state the Mesh required to render, excludes shader
     * and geometry. E.g., blend mode, culling, depth testing, direction of
     * rendering triangles, backface, etc.
     */
    public var state:State;

    /**
     * The texture that the Mesh uses.
     */
    public var texture:Texture;

    /**
     * The multiply tint applied to the Mesh. This is a hex value.
     * A value of `0xFFFFFF` will remove any tint effect.  
     * Default: `0xFFFFFF`
     */
    public var tint:Int;

    /**
     * To change mesh uv's, change its uvBuffer data and increment its _updateID.
     */
    public var uvBuffer(default, null):Buffer;

    /**
     * To change mesh vertices, change its uvBuffer data and increment its _updateID.
     * Incrementing _updateID is optional because most of Mesh objects do it anyway.
     */
    public var verticesBuffer(default, null):Buffer;

    /**
     * Updates the bounds of the mesh as a rectangle. The bounds calculation takes
     * the worldTransform into account. there must be a aVertexPosition attribute
     * present in the geometry for bounds to be calculated correctly.
     */
    override private function _calculateBounds():Void;

    /**
     * Standard renderer draw.
     * @param renderer Instance to renderer.
     */
    override private function _render(renderer:Renderer):Void;

    /**
     * Renders the object using the Canvas renderer.
     * @param renderer The canvas renderer.
     */
    override private function _renderCanvas(renderer:CanvasRenderer):Void;

    /**
     * Standard non-batching way of rendering.
     * @param renderer Instance to renderer.
     */
    private function _renderDefault(renderer:Renderer):Void;

    /**
     * Rendering by using the Batch system.
     * @param renderer Instance to renderer.
     */
    private function _renderToBatch(renderer:Renderer):Void;

    /**
     * Updates uv field based on from geometry uv's or batchUvs.
     */
    public function calculateUvs():Void;

    /**
     * Updates vertexData field based on transform and vertices.
     */
    public function calculateVertices():Void;

    /**
     * Tests if a point is inside this mesh. Works only for `DrawMode.TRIANGLES`.
     * @param point The point to test.
     * @return The result of the test.
     */
    public function containsPoint(point:IPointData):Bool;

    /**
     * Destroys the Mesh object.
     * @param options Options parameter. A boolean will act as if all options
     *                have been set to that value.
     */
    override public function destroy(?options:EitherType<Bool, MeshDestroyOptions>):Void;

    /**
     * Renders the object using the Canvas renderer.
     * @param renderer The renderer.
     */
    override public function renderCanvas(renderer:CanvasRenderer):Void;
}

/**
 * The options of `Container.destroy()` method.
 */
typedef MeshDestroyOptions =
{
    /**
     * if set to true, all the children will have their destroy method called
     * as well. 'options' will be passed on to those calls.  
     * Default: `false`
     */
    @:optional var children:Bool;
} 