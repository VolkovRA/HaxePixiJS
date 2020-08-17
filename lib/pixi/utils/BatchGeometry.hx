package pixi.utils;

/**
 * Geometry used to batch standard PIXI content (e.g. Mesh, Sprite, Graphics objects).
 * @see Documentation: http://pixijs.download/release/docs/PIXI.BatchGeometry.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_batch_BatchGeometry.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.BatchGeometry")
extern class BatchGeometry
{
    /**
     * Create a new BatchGeometry instance.
     * @param _static Optimization flag, where `false` is updated every frame, `true`
     *                doesn't change frame-to-frame. Default: `false`
     */
    public function new(?_static:Bool);

    /**
     * Buffer used for position, color, texture IDs.
     */
    private var _buffer:Buffer;

    /**
     * Index buffer data.
     */
    private var _indexBuffer:Buffer;
}