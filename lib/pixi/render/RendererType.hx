package pixi.render;

/**
 * Constant to identify the Renderer Type.
 * 
 * *This enum contains values  from: `Pixi.RENDERER_TYPE` for more convenient use.*
 */
enum abstract RendererType(Int) to Int from Int
{
    /**
     * Unknown render type.
     */
    var UNKNOWN = 0;

    /**
     * WebGL render type.
     */
    var WEBGL = 1;

    /**
     * Canvas render type.
     */
    var CANVAS = 2;
}