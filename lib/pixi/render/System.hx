package pixi.render;

/**
 * System is a base class used for extending systems used by the `pixi.render.Renderer`.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.System.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_System.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.System")
extern class System
{
    /**
     * Create a new System instance.
     * @param renderer The renderer this manager works for.
     */
    public function new(renderer:Renderer);

    /**
     * The renderer this manager works for.
     */
    public var renderer:Renderer;

    /**
     * Generic destroy methods to be overridden by the subclass.
     */
    public function destroy():Void;
}