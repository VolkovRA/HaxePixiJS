package pixi.render.systems;

import pixi.filters.Program;
import pixi.filters.Shader;
import pixi.geom.Geometry;

/**
 * System plugin to the renderer to manage geometry.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.GeometrySystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_geometry_GeometrySystem.js.html
 */
@:native("PIXI.systems.GeometrySystem")
extern class GeometrySystem extends System
{
    /**
     * Create a new GeometrySystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * `true` if support `gl.UNSIGNED_INT` in `gl.drawElements` or `gl.drawElementsInstanced`.
     */
    public var canUseUInt32ElementIndex(default, null):Bool;

    /**
     * `true` if has `ANGLE_instanced_arrays` extension.
     */
    public var hasInstance(default, null):Bool;

    /**
     * `true` if we has `*_vertex_array_object` extension.
     */
    public var hasVao(default, null):Bool;

    /**
     * Cache for all buffers by id, used in case renderer gets destroyed or for profiling.
     */
    public var managedBuffers(default, null):Dynamic;

    /**
     * Cache for all geometries by id, used in case renderer gets destroyed or for profiling.
     */
    public var managedGeometries(default, null):Dynamic;

    /**
     * Activate vertex array object.
     * @param geometry Geometry instance.
     * @param program Shader program instance.
     */
    private function activateVao(geometry:Geometry, program:Program):Void;

    /**
     * Binds geometry so that is can be drawn. Creating a Vao if required.
     * @param geometry Instance of geometry to bind.
     * @param shader Instance of shader to use vao for.
     */
    public function bind(geometry:Geometry, ?shader:Shader):Void;

    /**
     * Check compability between a geometry and a program.
     * @param geometry Geometry instance.
     * @param program Program instance.
     */
    private function checkCompatibility(geometry:Geometry, program:Program):Void;

    /**
     * Sets up the renderer context and necessary buffers.
     */
    public function contextChange():Void;

    /**
     * Dispose all WebGL resources of all managed geometries and buffers.
     * @param contextLost If context was lost, we suppress `gl.delete` calls. Default: `false`
     */
    public function disposeAll(?contextLost:Bool):Void;

    /**
     * Disposes buffer.
     * @param buffer Buffer with data.
     * @param contextLost If context was lost, we suppress deleteVertexArray. Default: `false`
     */
    public function disposeBuffer(buffer:Buffer, ?contextLost:Bool):Void;

    /**
     * Disposes geometry.
     * @param geometry Geometry with buffers. Only VAO will be disposed.
     * @param contextLost If context was lost, we suppress deleteVertexArray. Default: `false`
     */
    public function disposeGeometry(geometry:Geometry, ?contextLost:Bool):Void;

    /**
     * Draw the geometry.
     * @param type The type primitive to render.
     * @param size The number of elements to be rendered.
     * @param start Starting index.
     * @param instanceCount The number of instances of the set of elements to execute.
     */
    public function draw(type:Int, ?size:Int, ?start:Int, ?instanceCount:Int):Void;

    /**
     * Takes a geometry and program and generates a unique signature for them.
     * @param geometry To get signature from.
     * @param program To test geometry against.
     * @return Unique signature of the geometry and program.
     */
    private function getSignature(geometry:Geometry, program:Program):String;

    /**
     * Creates or gets Vao with the same structure as the geometry and stores it on the geometry.
     * If vao is created, it is bound automatically.
     * @param geometry Instance of geometry to to generate Vao for.
     * @param program Instance of program.
     */
    private function initGeometryVao(geometry:Geometry, program:Program):Void;

    /**
     * Reset and unbind any active VAO and geometry.
     */
    public function reset():Void;

    /**
     * Unbind/reset everything.
     */
    private function unbind():Void;

    /**
     * Update buffers.
     */
    private function updateBuffers():Void;
}