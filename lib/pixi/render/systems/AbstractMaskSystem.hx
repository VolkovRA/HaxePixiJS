package pixi.render.systems;

/**
 * System plugin to the renderer to manage masks of certain type.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.AbstractMaskSystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_mask_AbstractMaskSystem.js.html
 */
@:native("PIXI.systems.AbstractMaskSystem")
extern class AbstractMaskSystem extends System
{
    /**
     * Create a new AbstractMaskSystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * The mask stack.
     */
    public var maskStack:Array<MaskData>;

    /**
     * Destroys the mask stack.
     */
    override public function destroy():Void;

    /**
     * Gets count of masks of certain type.
     */
    public function getStackLength():Int;

    /**
     * Changes the mask stack that is used by this System.
     * @param maskStack The mask stack. 
     */
    public function setMaskStack(maskStack:Array<MaskData>):Void;
}