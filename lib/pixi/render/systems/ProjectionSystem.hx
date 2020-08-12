package pixi.render.systems;

import pixi.geom.Matrix;
import pixi.geom.Rectangle;

/**
 * System plugin to the renderer to manage the projection matrix.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.ProjectionSystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_projection_ProjectionSystem.js.html
 */
@:native("PIXI.systems.ProjectionSystem")
extern class ProjectionSystem extends System
{
    /**
     * Create a new ProjectionSystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * Default destination frame.
     */
    public var defaultFrame(default, null):Rectangle;

    /**
     * Destination frame.
     */
    public var destinationFrame(default, null):Rectangle;

    /**
     * Project matrix.
     */
    public var projectionMatrix(default, null):Matrix;

    /**
     * Source frame.
     */
    public var sourceFrame(default, null):Rectangle;

    /**
     * A transform that will be appended to the projection matrix if null, nothing will be applied.
     */
    public var transform:Matrix;

    /**
     * Updates the projection matrix based on a projection frame. (Which is a rectangle)
     * @param destinationFrame The destination frame.
     * @param sourceFrame The source frame.
     * @param resolution Resolution.
     * @param root If is root.
     */
    public function calculateProjection(destinationFrame:Rectangle, sourceFrame:Rectangle, resolution:Float, root:Bool):Void;

    /**
     * Sets the transform of the active render target to the given matrix.
     * @param matrix The transformation matrix.
     */
    public function setTransform(matrix:Matrix):Void;

    /**
     * Updates the projection matrix based on a projection frame (which is a rectangle).
     * 
     * Make sure to run `renderer.framebuffer.setViewport(destinationFrame)` after calling this.
     * 
     * @param destinationFrame The destination frame.
     * @param sourceFrame The source frame.
     * @param resolution Resolution.
     * @param root If is root.
     */
    public function update(destinationFrame:Rectangle, sourceFrame:Rectangle, resolution:Float, root:Bool):Void;
}