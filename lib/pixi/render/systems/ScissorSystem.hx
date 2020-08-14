package pixi.render.systems;

/**
 * System plugin to the renderer to manage scissor rects (used for masks).
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.ScissorSystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_mask_ScissorSystem.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.systems.ScissorSystem")
extern class ScissorSystem extends System
{
    /**
     * Create a new ScissorSystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * Pops scissor mask. MaskData is already removed from stack.
     */
    public function pop():Void;

    /**
     * Applies the Mask and adds it to the current stencil stack. @alvin
     * @param maskData The mask data.
     */
    public function push(maskData:MaskData):Void;
}