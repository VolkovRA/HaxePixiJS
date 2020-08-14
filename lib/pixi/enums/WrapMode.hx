package pixi.enums;

/**
 * The wrap modes that are supported by pixi.
 * 
 * The PIXI.settings.WRAP_MODE wrap mode affects the default wrapping mode of future operations.
 * It can be re-assigned to either CLAMP or REPEAT, depending upon suitability. If the texture is
 * non power of two then clamp will be used regardless as WebGL can only use REPEAT if the texture
 * is po2.
 * 
 * This property only affects WebGL.
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.WRAP_MODES` for more convenience.*
 */
enum abstract WrapMode(Int) to Int from Int
{
    /**
     * The textures uvs are clamped.
     */
    var CLAMP = 33071;

    /**
     * The texture uvs tile and repeat.
     */
    var REPEAT = 10497;

    /**
     * The texture uvs tile and repeat with mirroring.
     */
    var MIRRORED_REPEAT = 33648;
}