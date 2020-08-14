package pixi.textures;

/**
 * How to treat textures with premultiplied alpha.
 * 
 * *This enum contains values from: `Pixi.ALPHA_MODES` for more convenient use.*
 */
enum abstract AlphaMode(Int) to Int from Int
{
    /**
     * Source is not premultiplied, leave it like that.
     * 
     * Option for compressed and data textures that are created from typed arrays.
     */
    var NO_PREMULTIPLIED_ALPHA = 0;

    /**
     * Source is not premultiplied, premultiply on upload. Default option, used for all loaded images.
     */
    var PREMULTIPLY_ON_UPLOAD = 1;

    /**
     * Source is already premultiplied Example: spine atlases with `_pma` suffix.
     */
    var PREMULTIPLIED_ALPHA = 2;

    /**
     * Alias for NO_PREMULTIPLIED_ALPHA.
     */
    var NPM = 0;

    /**
     * Default option, alias for PREMULTIPLY_ON_UPLOAD.
     */
    var UNPACK = 1;

    /**
     * Alias for PREMULTIPLIED_ALPHA.
     */
    var PMA = 2;
}