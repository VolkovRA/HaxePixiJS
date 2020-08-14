package pixi.enums;

/**
 * Constants for mask implementations. We use `type` suffix because it leads to
 * very different behaviours.
 * 
 * *This enum contains values from: `Pixi.MASK_TYPES` for more convenient use.*
 */
enum abstract MaskType(Int) to Int from Int
{
    /**
     * Mask is ignored.
     */
    var NONE = 0;

    /**
     * Scissor mask, rectangle on screen, cheap.
     */
    var SCISSOR = 1;

    /**
     * Stencil mask, 1-bit, medium, works only if renderer supports stencil.
     */
    var STENCIL = 2;

    /**
     * Mask that uses SpriteMaskFilter, uses temporary RenderTexture.
     */
    var SPRITE = 3;
}