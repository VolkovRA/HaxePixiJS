package pixi.utils;

import haxe.Constraints.Function;
import js.html.CanvasElement;
import pixi.display.Sprite;
import pixi.textures.Texture;

/**
 * Utility methods for Sprite/Texture tinting.  
 * Tinting with the CanvasRenderer involves creating a new canvas to use
 * as a texture, so be aware of the performance implications.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.canvasUtils.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.canvasUtils")
extern class CanvasUtils
{
    /**
     * Number of steps which will be used as a cap when rounding colors.
     */
    static public var cacheStepsPerColorChannel:Int;

    /**
     * Whether or not the Canvas BlendModes are supported, consequently
     * the ability to tint using the multiply method.
     */
    static public var canUseMultiply:Bool;

    /**
     * Tint cache boolean flag.
     */
    static public var convertTintToImage:Bool;

    /**
     * The tinting method that will be used.
     */
    static public var tintMethod:Function;

    /**
     * Basically this method just needs a sprite and a color and tints the sprite with the given color.
     * @param sprite The sprite to tint.
     * @param color The color to use to tint the sprite with.
     * @return The tinted canvas.
     */
    static public function getTintedCanvas(sprite:Sprite, color:Int):CanvasElement;

    /**
     * Rounds the specified color according to the `CanvasUtils.cacheStepsPerColorChannel`.
     * @param color The color to round, should be a hex color.
     * @return The rounded color.
     */
    static public function getTintedPattern(color:Int):CanvasElement;

    /**
     * Tint a texture using the 'multiply' operation.
     * @param texture The texture to tint.
     * @param color The color to use to tint the sprite with.
     * @param canvas The current canvas.
     */
    static public function tintWithMultiply(texture:Texture, color:Int, canvas:CanvasElement):Void;

    /**
     * Tint a texture using the 'overlay' operation.
     * @param texture The texture to tint.
     * @param color The color to use to tint the sprite with.
     * @param canvas The current canvas.
     */
    static public function tintWithOverlay(texture:Texture, color:Int, canvas:CanvasElement):Void;

    /**
     * Tint a texture pixel per pixel.
     * @param texture The texture to tint.
     * @param color The color to use to tint the sprite with.
     * @param canvas The current canvas.
     */
    static public function tintWithPerPixel(texture:Texture, color:Int, canvas:CanvasElement):Void;
}