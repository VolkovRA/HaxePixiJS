package pixi.enums;

/**
 * Bitwise OR of masks that indicate the buffers to be cleared.
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.BUFFER_BITS` for more convenience.*
 */
enum abstract BufferBits(Int) to Int from Int
{
    /**
     * Indicates the buffers currently enabled for color writing.
     */
    var COLOR = 16384;

    /**
     * Indicates the depth buffer.
     */
    var DEPTH = 256;

    /**
     * Indicates the stencil buffer.
     */
    var STENCIL = 1024;
}