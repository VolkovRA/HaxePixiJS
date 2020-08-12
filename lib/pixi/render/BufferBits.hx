package pixi.render;

/**
 * Bitwise OR of masks that indicate the buffers to be cleared.
 * 
 * *This enum contains values from: `Pixi.BUFFER_BITS` for more convenient use.*
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