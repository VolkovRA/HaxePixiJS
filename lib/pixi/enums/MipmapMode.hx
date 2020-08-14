package pixi.enums;

/**
 * Mipmap filtering modes that are supported by pixi.
 * 
 * The PIXI.settings.MIPMAP_TEXTURES affects default texture filtering.
 * Mipmaps are generated for a baseTexture if its `mipmap` field is `ON`,
 * or its `POW2` and texture dimensions are powers of 2. Due to platform
 * restriction, `ON` option will work like `POW2` for webgl-1.
 * 
 * This property only affects WebGL.
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.MIPMAP_MODES` for more convenience.*
 */
enum abstract MipmapMode(Int) to Int from Int
{
    /**
     * No mipmaps.
     */
    var OFF = 0;

    /**
     * Generate mipmaps if texture dimensions are pow2.
     */
    var POW2 = 1;

    /**
     * Always generate mipmaps.
     */
    var ON = 2;
}