package pixi.display;

import pixi.enums.LineCap;
import pixi.enums.LineJoin;

/**
 * Represents the line style for Graphics.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.LineStyle.html
 * @see Source code: http://pixijs.download/release/docs/packages_graphics_src_styles_LineStyle.js.html
 * ***
 * Library: **core**  
 */
@:native("PIXI.LineStyle")
extern class LineStyle extends FillStyle
{
    /**
     * Create a new LineStyle instance.
     */
    public function new();

    /**
     * The alignment of any lines drawn (0.5 = middle, 1 = outer, 0 = inner).  
     * Default: `0.5`
     */
    public var alignment:Float;

    /**
     * Line cap style.  
     * Default: `LineCap.BUTT`
     */
    public var cap:LineCap;

    /**
     * Line join style.  
     * Default: `LineJoin.MITER`
     */
    public var join:LineJoin;

    /**
     * Miter limit.  
     * Default: `10`
     */
    public var miterLimit:Float;

    /**
     * If true the lines will be draw using LINES instead of TRIANGLE_STRIP.  
     * Default: `false`
     */
    public var native:Bool;

    /**
     * The width (thickness) of any lines drawn.  
     * Default: `0`
     */
    public var width:Float;

    /**
     * Clones the object.
     */
    override public function clone():LineStyle;

    /**
     * Reset the line style to default.
     */
    override public function reset():Void;
}