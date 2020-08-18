package pixi.render.systems;

import pixi.textures.BaseTexture;

/**
 * System plugin to the renderer to manage batching.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.BatchSystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_batch_BatchSystem.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.systems.BatchSystem")
extern class BatchSystem extends System
{
    /**
     * Create a new BatchSystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * The currently active ObjectRenderer.
     */
    public var currentRenderer:ObjectRenderer;

    /**
     * An empty renderer.
     */
    public var emptyRenderer:ObjectRenderer;

    /**
     * Assigns batch locations to textures in array based on boundTextures state.
     * 
     * All textures in texArray should have `_batchEnabled = _batchId`, and their
     * count should be less than `maxTextures`.
     * 
     * @param texArray Textures to bound.
     * @param boundTextures Current state of bound textures.
     * @param batchId Marker for _batchEnabled param of textures in texArray.
     * @param maxTextures Number of texture locations to manipulate.
     */
    public function boundArray(texArray:BatchTextureArray, boundTextures:Array<BaseTexture>, batchId:Int, maxTextures:Int):Void;

    /**
     * Handy function for batch renderers: copies bound textures in first maxTextures
     * locations to array sets actual _batchLocation for them.
     * @param arr Arr copy destination.
     * @param maxTextures Number of copied elements.
     */
    public function copyBoundTextures(arr:Array<BaseTexture>, maxTextures:Int):Void;

    /**
     * This should be called if you wish to do some custom rendering It will basically
     * render anything that may be batched up such as sprites.
     */
    public function flush():Void;

    /**
     * Reset the system to an empty renderer.
     */
    public function reset():Void;

    /**
     * Changes the current renderer to the one given in parameter.
     * @param objectRenderer The object renderer to use.
     */
    public function setObjectRenderer(objectRenderer:ObjectRenderer):Void;
}

/**
 * Used by the batcher to build texture batches.
 * Holds list of textures and their respective locations.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.BatchTextureArray.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_batch_BatchTextureArray.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.BatchTextureArray")
extern class BatchTextureArray
{
    /**
     * Create a new BatchTextureArray instance.
     */
    public function new();

    /**
     * number of filled elements.
     */
    public var count:Int;

    /**
     * Inside textures array.
     */
    public var elements:Array<BaseTexture>;

    /**
     * Respective locations for textures.
     */
    public var ids:Array<Int>;
}