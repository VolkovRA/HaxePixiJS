package pixi.render;

import pixi.display.DisplayObject;

/**
 * Base for a common object renderer that can be used as a system renderer plugin.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.ObjectRenderer.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_batch_ObjectRenderer.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.ObjectRenderer")
extern class ObjectRenderer extends System
{
    /**
     * Create a new ObjectRenderer instance.
     * @param renderer The renderer this manager works for.
     */
    public function new(renderer:Renderer);

    /**
     * Stub method that should be used to empty the current batch by rendering objects now.
     */
    public function flush():Void;

    /**
     * Keeps the object to render. It doesn't have to be rendered immediately.
     * @param object The object to render.
     */
    public function render(object:DisplayObject):Void;

    /**
     * Stub method that initializes any state required before rendering starts.
     * It is different from the `prerender` signal, which occurs every frame, in
     * that it is called whenever an object requests *this* renderer specifically.
     */
    public function start():Void;

    /**
     * Stops the renderer. It should free up any state and become dormant.
     */
    public function stop():Void;
}