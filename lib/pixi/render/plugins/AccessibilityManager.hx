package pixi.render.plugins;

import js.html.Element;
import pixi.geom.Rectangle;
import haxe.extern.EitherType;

/**
 * The Accessibility manager recreates the ability to tab and have
 * content read by screen readers. This is very important as it can
 * possibly help people with disabilities access PixiJS content.
 * 
 * A DisplayObject can be made accessible just like it can be made
 * interactive. This manager will map the events as if the mouse was
 * being used, minimizing the effort required to implement.
 * 
 * An instance of this class is automatically created by default,
 * and can be found at `renderer.plugins.accessibility`.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.AccessibilityManager.html
 * @see Source code: http://pixijs.download/release/docs/packages_accessibility_src_AccessibilityManager.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.AccessibilityManager")
extern class AccessibilityManager
{
    /**
     * Create a new AccessibilityManager instance.
     * @param renderer A reference to the current renderer.
     */
    public function new(renderer:EitherType<CanvasRenderer, Renderer>);

    /**
     * Setting this to true will visually show the divs.
     */
    public var debug:Bool;

    /**
     * A flag.
     */
    public var isActive(default, null):Bool;

    /**
     * A flag.
     */
    public var isMobileAccessibility(default, null):Bool;

    /**
     * The renderer this accessibility manager works for.
     */
    public var renderer(default, null):AbstractRenderer;

    /**
     * Adjust the hit area based on the bounds of a display object.
     * @param hitArea Bounds of the child.
     */
    public function capHitArea(hitArea:Rectangle):Void; 

    /**
     * Destroys the accessibility manager.
     */
    public function destroy():Void;

    /**
     * Private function that will visually add the information to the accessability div.
     * @param div HTMLElement.
     */
    public function updateDebugHTML(div:Element):Void;
}