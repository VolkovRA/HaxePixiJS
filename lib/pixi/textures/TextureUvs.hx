package pixi.textures;

import pixi.geom.Rectangle;

/**
 * Stores a texture's frame in UV coordinates, in which everything
 * lies in the rectangle `[(0,0), (1,0), (1,1), (0,1)]`.
 * 
 * |Corner|Coordinates|
 * |:-|:-|
 * |Top-Left|`(x0,y0)`|
 * |Top-Right|`(x1,y1)`|
 * |Bottom-Right|`(x2,y2)`|
 * |Bottom-Left|`(x3,y3)`|
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.TextureUvs.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_TextureUvs.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.TextureUvs")
extern class TextureUvs
{
    /**
     * Create a new TextureUvs instance.
     */
    private function new():Void;

    /**
     * X-component of top-left corner `(x0,y0)`.
     */
    public var x0:Float;

    /**
     * X-component of top-right corner `(x1,y1)`.
     */
    public var x1:Float;

    /**
     * X-component of bottom-right corner `(x2,y2)`.
     */
    public var x2:Float;

    /**
     * X-component of bottom-left corner `(x3,y3)`.
     */
    public var x3:Float;

    /**
     * Y-component of top-left corner `(x0,y0)`.
     */
    public var y0:Float;

    /**
     * Y-component of top-right corner `(x1,y1)`.
     */
    public var y1:Float;

    /**
     * Y-component of bottom-right corner `(x2,y2)`.
     */
    public var y2:Float;

    /**
     * Y-component of bottom-right corner `(x3,y3)`.
     */
    public var y3:Float;

    /**
     * Sets the texture Uvs based on the given frame information.
     * @param frame The frame of the texture.
     * @param baseFrame The base frame of the texture.
     * @param rotate Rotation of frame, see `pixi.groupD8`.
     */
    private function set(frame:Rectangle, baseFrame:Rectangle, rotate:Float):Void;
}