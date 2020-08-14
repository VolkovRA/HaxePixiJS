package pixi.utils;

/**
 * Generalized convenience utilities for Graphics.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.graphicsUtils.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.graphicsUtils")
extern class GraphicsUtils
{
    /**
     * Batch pool, stores unused batches for preventing allocations.
     */
    static public var BATCH_POOL:Array<BatchPart>;

    /**
     * Draw call pool, stores unused draw calls for preventing allocations.
     */
    static public var DRAW_CALL_POOL:Array<Dynamic>;

    /**
     * Map of fill commands for each shape type.
     */
    static public var FILL_COMMANDS:Dynamic;
}