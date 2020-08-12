package pixi.render.systems;

import pixi.display.DisplayObject;

/**
 * System plugin to the renderer to manage stencils (used for masks).
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.StencilSystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_mask_StencilSystem.js.html
 */
@:native("PIXI.systems.StencilSystem")
extern class StencilSystem extends System
{
    /**
     * Create a new StencilSystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * Pops stencil mask. MaskData is already removed from stack.
     * @param maskObject Object of popped mask data.
     */
    public function pop(maskObject:DisplayObject):Void;

    /**
     * Applies the Mask and adds it to the current stencil stack.
     * @param maskObject The mask data.
     */
    public function push(maskObject:DisplayObject):Void;
}