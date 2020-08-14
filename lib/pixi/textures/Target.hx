package pixi.textures;

/**
 * Various GL target types.
 * 
 * *This enum contains values from: `Pixi.TARGETS` for more convenient use.*
 */
enum abstract Target(Int) to Int from Int
{
    /**
     * Default: `3553`
     */
    var TEXTURE_2D = 3553;

    /**
     * Default: `34067`
     */
    var TEXTURE_CUBE_MAP = 34067;

    /**
     * Default: `35866`
     */
    var TEXTURE_2D_ARRAY = 35866;

    /**
     * Default: `34069`
     */
    var TEXTURE_CUBE_MAP_POSITIVE_X = 34069;

    /**
     * Default: `34070`
     */
    var TEXTURE_CUBE_MAP_NEGATIVE_X = 34070;

    /**
     * Default: `34071`
     */
    var TEXTURE_CUBE_MAP_POSITIVE_Y = 34071;

    /**
     * Default: `34072`
     */
    var TEXTURE_CUBE_MAP_NEGATIVE_Y = 34072;

    /**
     * Default: `34073`
     */
    var TEXTURE_CUBE_MAP_POSITIVE_Z = 34073;

    /**
     * Default: `34074`
     */
    var TEXTURE_CUBE_MAP_NEGATIVE_Z = 34074;
}