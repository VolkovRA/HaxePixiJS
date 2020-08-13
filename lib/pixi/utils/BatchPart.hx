package pixi.utils;

import haxe.extern.EitherType;
import pixi.display.FillStyle;
import pixi.display.LineStyle;

/**
 * A structure to hold interim batch objects for Graphics.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.graphicsUtils.BatchPart.html
 * @see Source code: http://pixijs.download/release/docs/packages_graphics_src_utils_BatchPart.js.html
 */
@:native("PIXI.graphicsUtils.BatchPart")
extern class BatchPart
{
    /**
     * Begin batch part.
     */
    public function begin(style:EitherType<FillStyle,LineStyle>, startIndex:Int, attribStart:Float):Void;

    /**
     * End batch part.
     */
    public function end(endIndex:Int, endAttrib:Float):Void;
}