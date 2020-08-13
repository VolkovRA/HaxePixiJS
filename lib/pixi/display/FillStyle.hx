package pixi.display;

import pixi.geom.Matrix;
import pixi.textures.Texture;

/**
 * Fill style object for Graphics.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.FillStyle.html
 * @see Source code: http://pixijs.download/release/docs/packages_graphics_src_styles_FillStyle.js.html
 */
@:native("PIXI.FillStyle")
extern class FillStyle
{
    /**
     * Create a new FillStyle instance.
     */
    public function new();

    /**
     * The alpha value used when filling the Graphics object.
     * 
     * Default: `1`
     */
    public var alpha:Float;

    /**
     * The hex color value used when coloring the Graphics object.
     * 
     * Default: `0xFFFFFF`
     */
    public var color:Int;

    /**
     * The transform aplpied to the texture.
     * 
     * Default: `null`
     */
    public var matrix:Matrix;

    /**
     * The texture to be used for the fill.
     * 
     * Default: `Texture.WHITE`
     */
    public var texture:Texture;

    /**
     * If the current fill is visible.
     * 
     * Default: `false`
     */
    public var visible:Bool;

    /**
     * Clones the object.
     * @return FillStyle
     */
    public function clone():FillStyle;

    /**
     * Destroy and don't use after this.
     */
    public function destroy():Void;

    /**
     * Reset.
     */
    public function reset():Void;
}