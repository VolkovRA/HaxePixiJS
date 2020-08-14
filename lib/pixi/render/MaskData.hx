package pixi.render;

import pixi.display.DisplayObject;
import pixi.enums.MaskType;
import pixi.geom.Rectangle;

/**
 * Component for masked elements.
 * 
 * Holds mask mode and temporary data about current mask.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.MaskData.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_mask_MaskData.js.html
 */
@:native("PIXI.MaskData")
extern class MaskData 
{
    /**
     * Create MaskData.
     * @param maskObject Object that describes the mask. Default: `null`
     */
    public function new(?maskObject:DisplayObject);

    /**
     * Scissor operation above the mask in stack.
     * Null if _scissorCounter is zero, rectangle instance if positive.
     */
    public var _scissorRect:Rectangle;

    /**
     * Whether we know the mask type beforehand.
     * 
     * Default: `true`
     */
    public var autoDetect:Bool;

    /**
     * Indicator of the type.
     */
    public var isMaskData:Bool;

    /**
     * Which element we use to mask.
     */
    public var maskObject:DisplayObject;

    /**
     * Whether it belongs to MaskSystem pool.
     */
    public var pooled:Bool;

    /**
     * Mask type.
     */
    public var type:MaskType;

    /**
     * Copies counters from maskData above, called from pushMask().
     * @param maskAbove 
     */
    public function copyCountersOrReset(maskAbove:Null<MaskData>):Void;

    /**
     * Resets the mask data after popMask().
     */
    public function reset():Void;
}