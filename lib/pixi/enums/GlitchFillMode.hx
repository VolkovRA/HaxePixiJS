package pixi.enums;

/**
 * The fill mode of the space after the offset.
 * ***
 * Library: **filters**  
 *   
 * *This enum duplicate values from: `GlitchFilter` static constants for more convenience.*
 */
enum abstract GlitchFillMode(Int) to Int from Int
{
    /**
     * Fill mode as transparent.
     */
    var TRANSPARENT = 0;

    /**
     * Fill mode as original.
     */
    var ORIGINAL = 1;

    /**
     * Fill mode as loop.
     */
    var LOOP = 2;

    /**
     * Fill mode as clamp.
     */
    var CLAMP = 3;

    /**
     * Fill mode as mirror.
     */
    var MIRROR = 4;
}