package pixi.enums;

/**
 * How to clear renderTextures in filter.
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.CLEAR_MODES` for more convenience.*
 */
enum abstract ClearMode(Int) to Int from Int
{
    /**
     * Preserve the information in the texture, blend above.
     */
    var BLEND = 0;

    /**
     * Must use gl.clear operation.
     */
    var CLEAR = 1;

    /**
     * Clear or blit it, depends on device and level of paranoia.
     */
    var BLIT = 2;

    /**
     * Alias for BLEND, same as false in earlier versions.
     */
    var NO = 0;

    /**
     * Alias for CLEAR, same as true in earlier versions.
     */
    var YES = 1;

    /**
     * Alias for BLIT.
     */
    var AUTO = 2;
}