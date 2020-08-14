package pixi.textures;

/**
 * Various GL data format types.
 * 
 * *This enum contains values from: `Pixi.TYPES` for more convenient use.*
 */
enum abstract Type(Int) to Int from Int
{
    /**
     * Default: `5121`
     */
    var UNSIGNED_BYTE = 5121;

    /**
     * Default: `5123`
     */
    var UNSIGNED_SHORT = 5123;

    /**
     * Default: `33635`
     */
    var UNSIGNED_SHORT_5_6_5 = 33635;

    /**
     * Default: `32819`
     */
    var UNSIGNED_SHORT_4_4_4_4 = 32819;

    /**
     * Default: `32820`
     */
    var UNSIGNED_SHORT_5_5_5_1 = 32820;

    /**
     * Default: `5126`
     */
    var FLOAT = 5126;

    /**
     * Default: `36193`
     */
    var HALF_FLOAT = 36193;
}