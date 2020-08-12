package pixi.render.systems;

import haxe.extern.EitherType;
import pixi.display.DisplayObject;
import pixi.display.Sprite;
import pixi.display.Graphics;
import pixi.filters.SpriteMaskFilter;

/**
 * System plugin to the renderer to manage masks.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.MaskSystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_mask_MaskSystem.js.html
 */
@:native("PIXI.systems.MaskSystem")
extern class MaskSystem extends System
{
    /**
     * Create a new MaskSystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * Current index of alpha mask pool.
     * 
     * Default: `0`
     */
    public var alphaMaskIndex(default, null):Int;

    /**
     * Pool of used sprite mask filters.
     */
    public var alphaMaskPool(default, null):Array<SpriteMaskFilter>;

    /**
     * Enable scissor.
     */
    public var enableScissor(default, null):Bool;

    /**
     * Pool of mask data.
     */
    public var maskDataPool(default, null):Array<MaskData>;

    /**
     * Sets type of MaskData based on its maskObject.
     */
    public function detect(maskData:MaskData):Void;

    /**
     * Removes the last mask from the mask stack and doesn't return it.
     * Renderer batch must be flushed beforehand.
     * @param target Display Object to pop the mask from.
     */
    public function pop(target:DisplayObject):Void;

    /**
     * Removes the last filter from the filter stack and doesn't return it.
     */
    public function popSpriteMask():Void;

    /**
     * Applies the Mask and adds it to the current filter stack.
     * Renderer batch must be flushed beforehand.
     * @param target Display Object to push the mask to.
     * @param maskData The masking data.
     */
    public function push(target:DisplayObject, maskData:EitherType<MaskData, EitherType<Sprite, EitherType<Graphics, DisplayObject>>>):Void;

    /**
     * Applies the Mask and adds it to the current filter stack.
     * @param maskData Sprite to be used as the mask.
     */
    public function pushSpriteMask(maskData:MaskData):Void;

    /**
     * Changes the mask stack that is used by this System.
     * @param maskStack The mask stack.
     */
    public function setMaskStack(maskStack:Array<MaskData>):Void;
}