package pixi.render.systems;

import haxe.Constraints.Function;
import pixi.display.BlendMode;

/**
 * System plugin to the renderer to manage WebGL state machines.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.StateSystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_state_StateSystem.js.html
 */
@:native("PIXI.systems.StateSystem")
extern class StateSystem extends System
{
    /**
     * Create a new StateSystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * Whether current blend equation is different.
     */
    private var _blendEq:Bool;

    /**
     * Blend mode.
     * 
     * Default: `BlendMode.NONE`
     */
    public var blendMode(default, null):BlendMode;

    /**
     * Collection of check calls.
     */
    public var checks(default, null):Array<Function>;

    /**
     * Default WebGL State.
     */
    public var defaultState(default, null):State;

    /**
     * GL context.
     */
    public var gl(default, null):Dynamic;

    /**
     * Collection of calls.
     */
    public var map(default, null):Array<Function>;

    /**
     * Polygon offset.
     */
    public var polygonOffset(default, null):Float;

    /**
     * State ID.
     */
    public var stateId(default, null):Int;

    /**
     * Sets the state, when previous state is unknown.
     * @param state The state to set.
     */
    public function forceState(state:Dynamic):Void;

    /**
     * Resets all the logic and disables the vaos.
     */
    public function reset():Void;

    /**
     * Sets the current state.
     * @param state The state to set.
     */
    public function set(state:Dynamic):Void;

    /**
     * Enables or disabled blending.
     * @param value Turn on or off webgl blending.
     */
    public function setBlend(value:Bool):Void;

    /**
     * Sets the blend mode.
     * @param value The blend mode to set to.
     */
    public function setBlendMode(value:BlendMode):Void;

    /**
     * Sets whether to enable or disable cull face.
     * @param value Turn on or off webgl cull face.
     */
    public function setCullFace(value:Bool):Void;

    /**
     * Sets whether to enable or disable depth test.
     * @param value Turn on or off webgl depth testing.
     */
    public function setDepthTest(value:Bool):Void;

    /**
     * Sets the gl front face.
     * @param value True is clockwise and false is counter-clockwise.
     */
    public function setFrontFace(value:Bool):Void;

    /**
     * Enables or disable polygon offset fill.
     * @param value Turn on or off webgl polygon offset testing.
     */
    public function setOffset(value:Bool):Void;

    /**
     * Sets the polygon offset.
     * @param value The polygon offset.
     * @param scale The polygon offset scale.
     */
    public function setPolygonOffset(value:Float, scale:Float):Void;

    /**
     * Checks to see which updates should be checked based on which settings have been activated.
     * 
     * For example, if blend is enabled then we should check the blend modes each time the state
     * is changed or if polygon fill is activated then we need to check if the polygon offset changes.
     * The idea is that we only check what we have too.
     * 
     * @param func The checking function to add or remove.
     * @param value Should the check function be added or removed.
     */
    public function updateCheck(func:Function, value:Bool):Void;
}