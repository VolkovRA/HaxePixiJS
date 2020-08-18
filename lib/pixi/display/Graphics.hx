package pixi.display;

import haxe.extern.EitherType;
import haxe.extern.Rest;
import js.lib.Float32Array;
import pixi.enums.LineJoin;
import pixi.enums.LineCap;
import pixi.enums.ScaleMode;
import pixi.enums.BlendMode;
import pixi.filters.Shader;
import pixi.geom.Point;
import pixi.geom.Polygon;
import pixi.geom.GraphicsGeometry;
import pixi.geom.Matrix;
import pixi.textures.Texture;
import pixi.render.Renderer;
import pixi.render.State;

/**
 * The Graphics class contains methods used to draw primitive
 * shapes such as lines, circles and rectangles to the display,
 * and to color and fill them.
 * 
 * Note that because Graphics can share a GraphicsGeometry with
 * other instances, it is necessary to call `destroy()` to properly
 * dereference the underlying GraphicsGeometry and avoid a memory
 * leak. Alternatively, keep using the same Graphics instance and
 * call `clear()` between redraws.
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
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Graphics.html
 * @see Source code: http://pixijs.download/release/docs/packages_graphics_src_Graphics.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Graphics")
extern class Graphics extends Container
{
    /**
     * Create a new Graphics instance.
     * @param geometry Geometry to use, if omitted will create a new GraphicsGeometry instance. Default: `null`
     */
    public function new(?geometry:GraphicsGeometry);

    /**
     * Current fill style.
     */
    private var _fillStyle:FillStyle;

    /**
     * Current line style.
     */
    private var _lineStyle:LineStyle;

    /**
     * Current hole mode is enabled.  
     * Default: `false`
     */
    private var _holeMode:Bool;

    /**
     * Current shape transform matrix.
     */
    private var _matrix:Matrix;

    /**
     * Update dirty for limiting calculating batches.  
     * Default: `-1`
     */
    private var batchDirty:Float;

    /**
     * A collections of batches! These can be drawn by the renderer batch system.
     */
    private var batches:Array<Dynamic>;

    /**
     * Update dirty for limiting calculating tints for batches.  
     * Default: `-1`
     */
    private var batchTint:Float;

    /**
     * The blend mode to be applied to the graphic shape.
     * Apply a value of `BlendMode.NORMAL` to reset the blend mode.  
     * Default: `BlendMode.NORMAL`
     */
    public var blendMode:BlendMode;

    /**
     * Current path.
     */
    private var currentPath:Polygon;

    /**
     * The current fill style.
     */
    public var fill(default, null):FillStyle;

    /**
     * The current line style.
     */
    public var line(default, null):LineStyle;

    /**
     * Includes vertex positions, face indices, normals, colors, UVs, and custom
     * attributes within buffers, reducing the cost of passing all this data to
     * the GPU. Can be shared between multiple Mesh or Graphics objects.
     */
    public var geometry(default, null):GraphicsGeometry;

    /**
     * Renderer plugin for batching.  
     * Default: `batch`
     */
    public var pluginName:String;

    /**
     * Represents the vertex and fragment shaders that processes the geometry and
     * runs on the GPU. Can be shared between multiple Graphics objects.
     */
    public var shader:Shader;

    /**
     * Represents the WebGL state the Graphics required to render, excludes shader
     * and geometry. E.g., blend mode, culling, depth testing, direction of
     * rendering triangles, backface, etc.
     */
    public var state:State;

    /**
     * The tint applied to the graphic shape. This is a hex value.
     * A value of 0xFFFFFF will remove any tint effect.  
     * Default: `0xFFFFFF`
     */
    public var tint:Int;

    /**
     * Copy of the object vertex data.
     */
    private var vertexData:Float32Array;

    /**
     * Retrieves the bounds of the graphic shape as a rectangle object.
     */
    override private function _calculateBounds():Void;

    /**
     * Initialize the curve.
     * @param x Default: `0`
     * @param y Default: `0`
     */
    private function _initCurve(?x:Float, ?y:Float):Void;

    /**
     * Populating batches for rendering.
     */
    private function _populateBatches():Void;

    /**
     * Renders the object using the WebGL renderer.
     * @param renderer The renderer.
     */
    override private function _render(renderer:Renderer):Void;

    /**
     * Renders the batches using the BathedRenderer plugin.
     * @param renderer The renderer.
     */
    private function _renderBatched(renderer:Renderer):Void;

    /**
     * Renders the graphics direct.
     * @param renderer The renderer.
     */
    private function _renderDirect(renderer:Renderer):Void;

    /**
     * Renders specific DrawCall.
     */
    private function _renderDrawCallDirect(renderer:Renderer, drawCall:BatchDrawCall):Void;

    /**
     * Resolves shader for direct rendering.
     * @param renderer The renderer.
     */
    private function _resolveDirectShader(renderer:Renderer):Void;

    /**
     * The arc method creates an arc/curve (used to create circles, or parts of circles).
     * @param cx The x-coordinate of the center of the circle.
     * @param cy The y-coordinate of the center of the circle.
     * @param radius The radius of the circle.
     * @param startAngle The starting angle, in radians. (0 is at the 3 o'clock position of the arc's circle)
     * @param endAngle The ending angle, in radians.
     * @param anticlockwise Specifies whether the drawing should be counter-clockwise or clockwise.
     *                      False is default, and indicates clockwise, while true indicates counter-clockwise.  
     *                      Default: `false`
     * @return This Graphics object. Good for chaining method calls.
     */
    public function arc(    cx:Float,
                            cy:Float,
                            radius:Float,
                            startAngle:Float,
                            endAngle:Float,
                            ?anticlockwise:Bool
    ):Graphics;

    /**
     * The arcTo() method creates an arc/curve between two tangents on the canvas.  
     * "borrowed" from https://code.google.com/p/fxcanvas/ - thanks google!
     * @param x1 The x-coordinate of the first tangent point of the arc.
     * @param y1 The y-coordinate of the first tangent point of the arc.
     * @param x2 The x-coordinate of the end of the arc.
     * @param y2 The y-coordinate of the end of the arc.
     * @param radius The radius of the arc.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function arcTo(x1:Float, y1:Float, x2:Float, y2:Float, radius:Float):Graphics;

    /**
     * Specifies a simple one-color fill that subsequent calls to other Graphics
     * methods (such as lineTo() or drawCircle()) use when drawing.
     * @param color The color of the fill. Default: `0x000000`
     * @param alpha The alpha of the fill. Default: `0`
     * @return This Graphics object. Good for chaining method calls.
     */
    public function beginFill(?color:Int, ?alpha:Float):Graphics;

    /**
     * Begin adding holes to the last draw shape IMPORTANT: holes must be fully
     * inside a shape to work Also weirdness ensues if holes overlap! Ellipses,
     * Circles, Rectangles and Rounded Rectangles cannot be holes or host for
     * holes in CanvasRenderer, please use `moveTo` `lineTo`, `quadraticCurveTo`
     * if you rely on pixi-legacy bundle.
     * @return Returns itself.
     */
    public function beginHole():Graphics;

    /**
     * Begin the texture fill.
     * @param options Object object.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function beginTextureFill(?options:TextureFillOptions):Graphics;

    /**
     * Calculate the points for a bezier curve and then draws it.
     * @param cpX Control point x.
     * @param cpY Control point y.
     * @param cpX2 Second Control point x.
     * @param cpY2 Second Control point y.
     * @param toX Destination point x.
     * @param toY Destination point y.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function bezierCurveTo(cpX:Float, cpY:Float, cpX2:Float, cpY2:Float, toX:Float, toY:Float):Graphics;

    /**
     * Recalcuate the tint by applying tin to batches using Graphics tint.
     */
    private function calculateTints():Void;

    /**
     * If there's a transform update or a change to the shape of the geometry, recaculate the vertices.
     */
    private function calculateVertices():Void;

    /**
     * Clears the graphics that were drawn to this Graphics object, and resets fill and line style settings.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function clear():Graphics;

    /**
     * Creates a new Graphics object with the same values as this one. Note that only
     * the geometry of the object is cloned, not its transform (position,scale,etc)
     * @return A clone of the graphics object.
     */
    public function clone():Graphics;

    /**
     * Closes the current path.
     * @return Returns itself.
     */
    public function closePath():Graphics;

    /**
     * Tests if a point is inside this graphics object.
     * @param point The point to test.
     * @return The result of the test.
     */
    public function containsPoint(point:IPointData):Bool;

    /**
     * Draw Rectangle with chamfer corners.  
     * *Note: Only available with* **@pixi/graphics-extras.**
     * @param x Upper left corner of rect.
     * @param y Upper right corner of rect.
     * @param width Width of rect.
     * @param height Height of rect.
     * @param chamfer Accept negative or positive values.
     * @return Returns self.
     */
    public function drawChamferRect(x:Float, y:Float, width:Float, height:Float, chamfer:Float):Graphics;

    /**
     * Draws a circle.
     * @param x The X coordinate of the center of the circle.
     * @param y The Y coordinate of the center of the circle.
     * @param radius The radius of the circle.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function drawCircle(x:Float, y:Float, radius:Float):Graphics;

    /**
     * Draws an ellipse.
     * @param x The X coordinate of the center of the ellipse.
     * @param y The Y coordinate of the center of the ellipse.
     * @param width The half width of the ellipse.
     * @param height The half height of the ellipse.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function drawEllipse(x:Float, y:Float, width:Float, height:Float):Graphics;

    /**
     * Draw Rectangle with fillet corners.  
     * *Note: Only available with* **@pixi/graphics-extras.**
     * @param x Upper left corner of rect.
     * @param y Upper right corner of rect.
     * @param width Width of rect.
     * @param height Height of rect.
     * @param fillet Non-zero real number, size of corner cutout.
     * @return Returns self.
     */
    public function drawFilletRect(x:Float, y:Float, width:Float, height:Float, fillet:Float):Graphics;

    /**
     * Draws a polygon using the given path.
     * @param path Repeatable. The path data used to construct the polygon.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function drawPolygon(path:Rest<EitherType<Array<Float>, EitherType<Array<Point>, Polygon>>>):Graphics;

    /**
     * Draws a rectangle shape.
     * @param x The X coord of the top-left of the rectangle.
     * @param y The Y coord of the top-left of the rectangle.
     * @param width The width of the rectangle.
     * @param height The height of the rectangle.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function drawRect(x:Float, y:Float, width:Float, height:Float):Graphics;

    /**
     * Draw a regular polygon where all sides are the same length.
     * *Note: Only available with* **@pixi/graphics-extras.**
     * @param x X position.
     * @param y Y position.
     * @param radius Polygon radius.
     * @param sides Minimum value is 3.
     * @param rotation Starting rotation values in radians..
     * @return This Graphics object. Good for chaining method calls.
     */
    public function drawRegularPolygon(x:Float, y:Float, radius:Float, sides:Float, rotation:Float):Graphics;

    /**
     * Draw a rectangle shape with rounded/beveled corners.
     * @param x The X coord of the top-left of the rectangle.
     * @param y The Y coord of the top-left of the rectangle.
     * @param width The width of the rectangle.
     * @param height The height of the rectangle.
     * @param radius Radius of the rectangle corners.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function drawRoundedRect(x:Float, y:Float, width:Float, height:Float, radius:Float):Graphics;

    /**
     * Draw any shape.
     * @param shape Shape to draw.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function drawShape(shape:EitherType<Circle,EitherType<Ellipse,EitherType<Polygon,EitherType<Rectangle,RoundedRectangle>>>>):Graphics;

    /**
     * Draw a star shape with an arbitrary number of points.
     * @param x Center X position of the star.
     * @param y Center Y position of the star.
     * @param points The number of points of the star, must be > 1.
     * @param radius The outer radius of the star.
     * @param innerRadius The inner radius between points, default half `radius`.
     * @param rotation The rotation of the star in radians, where 0 is vertical. Default: `0`
     * @return This Graphics object. Good for chaining method calls.
     */
    public function drawStar(x:Float, y:Float, points:Float, radius:Float, innerRadius:Float, ?rotation:Float):Graphics;

    /**
     * Draw a torus shape, like a donut. Can be used for something like a circle loader.  
     * *Note: Only available with* **@pixi/graphics-extras.**
     * @param x X position.
     * @param y Y position.
     * @param innerRadius Inner circle radius.
     * @param outerRadius Outer circle radius.
     * @param sweep How much of the circle to fill, in radius.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function drawTorus(x:Float, y:Float, innerRadius:Float, outerRadius:Float, sweep:Float):Graphics;

    /**
     * Applies a fill to the lines and shapes that were added since the last call to the beginFill() method.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function endFill():Graphics;

    /**
     * End adding holes to the last draw shape.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function endHole():Graphics;

    /**
     * Finish the polygon object.
     */
    private function finishPoly():Void;

    /**
     * Generates a canvas texture. Only available with **pixi.js-legacy** bundle
     * or the **@pixi/canvas-graphics** package.
     * @param scaleMode The scale mode of the texture.
     * @param resolution The resolution of the texture.
     * @return The new texture.
     */
    public function generateCanvasTexture(scaleMode:ScaleMode, resolution:Float):Texture;

    /**
     * True if graphics consists of one rectangle, and thus, can be drawn like
     * a Sprite and masked with gl.scissor.
     * @return True if only 1 rect.
     */
    public function isFastRect():Bool;

    /**
     * Specifies the line style used for subsequent calls to Graphics methods such as the
     * lineTo() method or the drawCircle() method.
     * @param width Width of the line to draw, will update the objects stored style. Default: `0`
     * @param color Color of the line to draw, will update the objects stored style.  Default: `0x0`
     * @param alpha Alpha of the line to draw, will update the objects stored style.  Default: `1`
     * @param alignment Alignment of the line to draw, (0 = inner, 0.5 = middle, 1 = outter).  Default: `1`
     * @param native If true the lines will be draw using LINES instead of TRIANGLE_STRIP.  Default: `false`
     * @return This Graphics object. Good for chaining method calls.
     */
    @:overload(function(?options:LineStyleOptions):Graphics{})
    public function lineStyle(?width:Float, ?color:Int, ?alpha:Float, ?alignment:Float, ?native:Bool):Graphics;

    /**
     * Like line style but support texture for line fill.
     * @param options Collection of options for setting line style.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function lineTextureStyle(?options:TextureLineStyleOptions):Graphics;

    /**
     * Draws a line using the current line style from the current drawing position to (x, y);
     * The current drawing position is then set to (x, y).
     * @param x The X coordinate to draw to.
     * @param y The Y coordinate to draw to.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function lineTo(x:Float, y:Float):Graphics;

    /**
     * Moves the current drawing position to x, y.
     * @param x The X coordinate to move to.
     * @param y The Y coordinate to move to.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function moveTo(x:Float, y:Float):Graphics;

    /**
     * Calculate the points for a quadratic bezier curve and then draws it.
     * Based on: https://stackoverflow.com/questions/785097/how-do-i-implement-a-bezier-curve-in-c
     * @param cpX Control point x.
     * @param cpY Control point y.
     * @param toX Destination point x.
     * @param toY Destination point y.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function quadraticCurveTo(cpX:Float, cpY:Float, toX:Float, toY:Float):Graphics;

    /**
     * Apply a matrix to the positional data.
     * @param matrix Matrix to use for transform current shape.
     * @return This Graphics object. Good for chaining method calls.
     */
    public function setMatrix(matrix:Matrix):Graphics;

    /**
     * Start a polygon object internally.
     */
    private function startPoly():Void;
}

/**
 * The textured line style options.
 * ***
 * Library: **core** 
 */
typedef TextureLineStyleOptions =
{
    >LineStyleOptions,

    /**
     * Texture to use.  
     * Default: `Texture.WHITE`
     */
    @:optional var texture:Texture;

    /**
     * Texture matrix to transform texture.  
     * Default: `null`
     */
    @:optional var matrix:Matrix;
}

/**
 * The line style options.
 * ***
 * Library: **core** 
 */
typedef LineStyleOptions =
{
    /**
     * Width of the line to draw, will update the objects stored style.  
     * Default: `0`
     */
    @:optional var width:Float;

    /**
     * Color of the line to draw, will update the objects stored style.  
     * Default: `0x0`
     */
    @:optional var color:Int;

    /**
     * Alpha of the line to draw, will update the objects stored style.  
     * Default: `1`
     */
    @:optional var alpha:Float;

    /**
     * Alignment of the line to draw, (0 = inner, 0.5 = middle, 1 = outter)  
     * Default: `0.5`
     */
    @:optional var alignment:Float;

    /**
     * If true the lines will be draw using LINES instead of TRIANGLE_STRIP.  
     * Default: `false`
     */
    @:optional var native:Bool;

    /**
     * Line cap style.  
     * Default: `LineCap.BUTT`
     */
    @:optional var cap:LineCap;

    /**
     * Line join style.  
     * Default: `LineJoin.MITER`
     */
    @:optional var join:LineJoin;

    /**
     * Miter limit ratio.  
     * Default: `10`
     */
    @:optional var miterLimit:Float;
}

/**
 * The params of `beginTextureFill()` method.
 * ***
 * Library: **core** 
 */
typedef TextureFillOptions =
{
    /**
     * Texture to fill.  
     * Default: `Texture.WHITE`
     */
    @:optional var texture:Texture;

    /**
     * Background to fill behind texture.  
     * Default: `0xffffff`
     */
    @:optional var color:Int;

    /**
     * Alpha of fill.  
     * Default: `1`
     */
    @:optional var alpha:Float;

    /**
     * Transform matrix.  
     * Default: `null`
     */
    @:optional var matrix:Matrix;
}

/**
 * Used by the batcher to draw batches. Each one of these contains all information
 * required to draw a bound geometry.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.BatchDrawCall.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_batch_BatchDrawCall.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.BatchDrawCall")
extern class BatchDrawCall
{
    /**
     * Create a new BatchDrawCall instance.
     */
    public function new():Void;

    /**
     * Data for uniforms or custom webgl state.
     */
    public var data:Dynamic;
}