package pixi.enums;

/**
 * Constant to identify the Renderer Type.
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.RENDERER_TYPE` for more convenience.*
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