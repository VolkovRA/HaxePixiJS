package pixi.textures;

import js.html.webgl.Texture;
import pixi.enums.GLDataType;
import pixi.enums.WrapMode;

/**
 * Internal texture for WebGL context.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.GLTexture.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_GLTexture.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.GLTexture")
extern class GLTexture
{
    /**
     * Create a new GLTexture instance.
     */
    public function new();

    /**
     * Texture contents dirty flag.
     */
    public var dirtyId:Int;

    /**
     * Texture style dirty flag.
     */
    public var dirtyStyleId:Int;

    /**
     * Width of texture that was used in texImage2D.
     */
    public var width:Int;

    /**
     * Height of texture that was used in texImage2D.
     */
    public var height:Int;

    /**
     * Type copied from baseTexture.
     */
    public var internalFormat:GLDataType;

    /**
     * Whether mip levels has to be generated.
     */
    public var mipmap:Bool;

    /**
     * The WebGL texture.
     */
    public var texture:Texture;

    /**
     * Type copied from baseTexture.
     */
    public var type:GLDataType;

    /**
     * WrapMode copied from baseTexture.
     */
    public var wrapMode:WrapMode;
}