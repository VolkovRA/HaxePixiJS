package pixi.geom;

import haxe.extern.EitherType;
import pixi.display.FillStyle;
import pixi.display.LineStyle;
import pixi.geom.Point;
import pixi.textures.Texture;
import pixi.utils.BatchGeometry;
import pixi.utils.BatchPart;
import pixi.utils.Buffer;
import pixi.utils.GraphicsData;

/**
 * The Graphics class contains methods used to draw primitive shapes
 * such as lines, circles and rectangles to the display, and to color
 * and fill them.
 * 
 * GraphicsGeometry is designed to not be continually updating the
 * geometry since it's expensive to re-tesselate using **earcut**.
 * Consider using `pixi.display.Mesh` for this use-case, it's much faster.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.GraphicsGeometry.html
 * @see Source code: http://pixijs.download/release/docs/packages_graphics_src_GraphicsGeometry.js.html#line23
 * ***
 * Library: **core** 
 */
@:native("PIXI.GraphicsGeometry")
extern class GraphicsGeometry extends BatchGeometry
{
    /**
     * Create a new GraphicsGeometry instance.
     */
    public function new();

    /**
     * The maximum number of points to consider an object "batchable",
     * able to be batched by the renderer's batch system.  
     * Default: `100`
     */
    static public var BATCHABLE_SIZE:Int;

    /**
     * Cached bounds.
     */
    private var _bounds:Bounds;

    /**
     * Batches need to regenerated if the geometry is updated.
     */
    private var batchDirty:Int;

    /**
     * Intermediate abstract format sent to batch system.
     * Can be converted to drawCalls or to batchable objects.
     */
    private var batches:Array<BatchPart>;

    /**
     * Get the current bounds of the graphic geometry.
     */
    public var bounds(default, null):Bounds;

    /**
     * The bounds dirty flag.
     */
    private var boundsDirty:Float;
    
    /**
     * Padding to add to the bounds.  
     * Default: `0`
     */
    public var boundsPadding:Float;

    /**
     * Used to check if the cache is dirty.
     */
    private var cacheDirty:Float;

    /**
     * Used to detect if we cleared the graphicsData.  
     * Default: `0`
     */
    private var clearDirty:Float;

    /**
     * Minimal distance between points that are considered different.
     * Affects line tesselation.
     */
    public var closePointEps:Float;

    /**
     * The collection of colors.
     */
    private var colors:Array<Int>;

    /**
     * Used to detect if the graphics object has changed.
     */
    private var dirty:Float;

    /**
     * List of current draw calls drived from the batches.
     */
    private var drawCalls:Array<Dynamic>;

    /**
     * The collection of drawn shapes.
     */
    private var graphicsData:Array<GraphicsData>;

    /**
     * The indices of the vertices.
     */
    private var indices:Array<Int>;

    /**
     * An array of points to draw, 2 numbers per point.
     */
    private var points:Array<Float>;

    /**
     * Index of the last batched shape in the stack of calls.
     */
    private var shapeIndex:Int;
    
    /**
     * Reference to the texture IDs.
     */
    private var textureIds:Array<Int>;

    /**
     * The UVs collection.
     */
    private var uvs:Array<Float>;

    /**
     * Affinity check.
     * @param styleA 
     * @param styleB 
     */
    public function _compareStyles(styleA:EitherType<FillStyle,LineStyle>, styleB:EitherType<FillStyle,LineStyle>):Bool;

    /**
     * Add colors.
     * @param colors List of colors to add to.
     * @param color Color to add.
     * @param alpha Alpha to use.
     * @param size Number of colors to add.
     */
    private function addColors(colors:Array<Int>, color:Int, alpha:Float, size:Int):Void;

    /**
     * Add texture id that the shader/fragment wants to use.
     */
    private function addTextureIds(textureIds:Array<Int>, id:Int, size:Int):Void;

    /**
     * Generates the UVs for a shape.
     * @param verts Vertices.
     * @param uvs UVs.
     * @param texture Reference to Texture.
     * @param start Index buffer start index.
     * @param size The size/length for index buffer.
     * @param matrix Optional transform for all points. Default: `null`
     */
    private function addUvs(verts:Array<Float>, uvs:Array<Float>, texture:Texture, start:Int, size:Int, ?matrix:Matrix):Void;

    /**
     * Modify uvs array according to position of texture region Does not work with rotated or trimmed textures.
     * @param uvs Array.
     * @param texture Region.
     * @param start Starting index for uvs.
     * @param size How many points to adjust.
     */
    public function adjustUvs(uvs:Array<Float>, texture:Texture, start:Int, size:Int):Void;

    /**
     * Converts intermediate batches data to drawCalls.
     */
    private function buildDrawCalls():Void;

    /**
     * Update the local bounds of the object. Expensive to use performance-wise.
     */
    private function calculateBounds():Void;

    /**
     * Clears the graphics that were drawn to this Graphics object, and resets fill and line style settings.
     * @return This GraphicsGeometry object. Good for chaining method calls.
     */
    public function clear():GraphicsGeometry;

    /**
     * Check to see if a point is contained within this geometry.
     * @param point Point to check if it's contained.
     * @return `true` if the point is contained within geometry.
     */
    public function containsPoint(point:IPointData):Bool;

    /**
     * Destroys the GraphicsGeometry object.
     */
    public function destroy():Void;

    /**
     * Draws the given shape to this Graphics object.
     * Can be any of Circle, Rectangle, Ellipse, Line or Polygon.
     * @param shape The shape object to draw.
     * @param matrix Transform applied to the points of the shape.
     * @return Returns geometry for chaining.
     */
    public function drawHole(shape:EitherType<Circle,EitherType<Ellipse,EitherType<Polygon,EitherType<Rectangle,RoundedRectangle>>>>, ?matrix:Matrix):GraphicsGeometry;

    /**
     * Draws the given shape to this Graphics object. Can be any of Circle, Rectangle, Ellipse, Line or Polygon.
     * @param shape The shape object to draw.
     * @param fillStyle Defines style of the fill. Default: `null`
     * @param lineStyle Defines style of the lines. Default: `null`
     * @param matrix Transform applied to the points of the shape. Default: `null`
     * @return Returns geometry for chaining.
     */
    public function drawShape(shape:EitherType<Circle,EitherType<Ellipse,EitherType<Polygon,EitherType<Rectangle,RoundedRectangle>>>>, ?fillStyle:FillStyle, ?lineStyle:LineStyle, ?matrix:Matrix):GraphicsGeometry;

    /**
     * Call if you changed graphicsData manually. Empties all batch buffers.
     */
    public function invalidate():Void;
    
    /**
     * Checks to see if this graphics geometry can be batched.
     * Currently it needs to be small enough and not contain any native lines.
     */
    private function isBatchable():Bool;

    /**
     * Packs attributes to single buffer.
     */
    private function packAttributes():Void;

    /**
     * Offset the indices so that it works with the batcher.
     */
    private function packBatches():Void;

    /**
     * Process fill part of Graphics.
     */
    private function processFill(data:GraphicsData):Void;

    /**
     * Process the holes data.
     * @param holes Holes to render.
     */
    private function processHoles(holes:GraphicsData):Void;

    /**
     * Process line part of Graphics.
     */
    private function processLine(data:GraphicsData):Void;

    /**
     * Transform points using matrix.
     * @param points Points to transform.
     * @param matrix Transform matrix.
     */
    private function transformPoints(points:Array<Float>, matrix:Matrix):Void;

    /**
     * Generates intermediate batch data.
     * Either gets converted to drawCalls or used to convert to batch objects
     * directly by the Graphics object.
     * @param aloow32Indices Allow using 32-bit indices for preventings artefacts
     *                       when more that 65535 vertices.
     */
    public function updateBatches(?aloow32Indices:Bool):Void;

    /**
     * Test geometry for batching process.
     */
    private function validateBatching():Void;
}
