package pixi.render.systems;

import pixi.display.DisplayObject;

/**
 * System plugin to the renderer to manage texture garbage collection on the GPU,
 * ensuring that it does not get clogged up with textures that are no longer being used.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.TextureGCSystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_TextureGCSystem.js.html
 */
@:native("PIXI.systems.TextureGCSystem")
extern class TextureGCSystem extends System
{
    /**
     * Create a new TextureGCSystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * Check count.
     */
    public var checkCount(default, null):Int;

    /**
     * Maximum number of item to check.
     * 
     * @see `pixi.Settings.GC_MAX_CHECK_COUNT` http://pixijs.download/release/docs/PIXI.settings.html#.GC_MAX_CHECK_COUNT
     */
    public var checkCountMax:Int;

    /**
     * Count.
     */
    public var count(default, null):Int;

    /**
     * Maximum idle time, in seconds.
     * 
     * @see `pixi.Settings.GC_MAX_IDLE` http://pixijs.download/release/docs/PIXI.settings.html#.GC_MAX_IDLE
     */
    public var maxIdle:Float;

    /**
     * Current garabage collection mode.
     * 
     * @see `pixi.Settings.GC_MODE` http://pixijs.download/release/docs/PIXI.settings.html#.GC_MODE
     */
    public var mode:GCMode;

    /**
     * Checks to see when the last time a texture was used if the texture has not been used
     * for a specified amount of time it will be removed from the GPU.
     */
    public function postrender():Void;

    /**
     * Checks to see when the last time a texture was used if the texture has not been used
     * for a specified amount of time it will be removed from the GPU.
     */
    public function run():Void;

    /**
     * Removes all the textures within the specified displayObject and its children from the GPU.
     * @param displayObject The displayObject to remove the textures from.
     */
    public function unload(displayObject:DisplayObject):Void;
}