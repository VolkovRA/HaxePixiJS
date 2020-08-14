package pixi.textures;

import js.lib.Float32Array;
import pixi.geom.Matrix;

/**
 * Class controls uv mapping from Texture normal space to BaseTexture
 * normal space.
 * 
 * Takes `trim` and `rotate` into account. May contain clamp settings
 * for Meshes and TilingSprite.
 * 
 * Can be used in Texture `uvMatrix` field, or separately, you can use
 * different clamp settings on the same texture. If you want to add
 * support for texture region of certain feature or filter, that's
 * what you're looking for.
 * 
 * Takes track of Texture changes through `_lastTextureID` private field.
 * Use `update()` method call to track it from outside.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.TextureMatrix.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_TextureMatrix.js.html
 */
@:native("PIXI.TextureMatrix")
extern class TextureMatrix extends EventEmitter
{
    /**
     * Create a new TextureMatrix instance.
     * @param texture Observed texture.
     * @param clampMargin Changes frame clamping, 0.5 by default. Use -0.5 for extra border.
     */
    public function new(texture:Texture, ?clampMargin:Float);

    /**
     * Tracks Texture frame changes.
     */
    private var _textureID:Int;

    /**
     * Tracks Texture frame changes.
     */
    private var _updateID:Int;

    /**
     * Changes frame clamping Works with TilingSprite and Mesh Change to -0.5 to
     * add a pixel to the edge, recommended for transparent trimmed textures in atlas.
     * 
     * Default: `0.5`
     */
    public var clampMargin:Float;

    /**
     * Changes frame clamping Works with TilingSprite and Mesh Change to 1.5 if
     * you texture has repeated right and bottom lines, that leads to smoother borders.
     * 
     * Default: `0`
     */
    public var clampOffset:Float;

    /**
     * If texture size is the same as baseTexture.
     * 
     * Default: `false`
     */
    public var isSimple(default, null):Bool;

    /**
     * Matrix operation that converts texture region coords to texture coords.
     */
    public var mapCoord(default, null):Matrix;

    /**
     * Texture property.
     */
    public var texture:Texture;

    /**
     * Clamp region for normalized coords, left-top pixel center in xy,
     * bottom-right in zw. Calculated based on clampOffset.
     */
    public var uClampFrame(default, null):Float32Array;

    /**
     * Normalized clamp offset. Calculated based on clampOffset.
     */
    public var uClampOffset(default, null):Float32Array;

    /**
     * Multiplies uvs array to transform.
     * @param uvs Mesh uvs.
     * @param out Output.
     * @return Output.
     */
    public function multiplyUvs(uvs:Float32Array, ?out:Float32Array):Float32Array;

    /**
     * Updates matrices if texture was changed.
     * @param forceUpdate If true, matrices will be updated any case.
     * @return Whether or not it was updated.
     */
    public function update(?forceUpdate:Bool):Bool;
}