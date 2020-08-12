package pixi.render;

import pixi.display.BlendMode;

/**
 * This is a WebGL state, and is is passed The WebGL StateManager.
 * 
 * Each mesh rendered may require WebGL to be in a different state.
 * For example you may want different blend mode or to enable polygon offsets.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.State.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_state_State.js.html
 */
@:native("PIXI.State")
extern class State
{
    /**
     * Create a new State instance.
     */
    public function new();

    /**
     * Activates blending of the computed fragment color values.
     */
    public var blend:Bool;

    /**
     * The blend mode to be applied when this state is set.
     * 
     * Apply a value of `BlendMode.NORMAL` to reset the blend mode.
     * Setting this mode to anything other than NO_BLEND will automatically switch blending on.
     * 
     * Default: `BlendMode.NORMAL`
     */
    public var blendMode:BlendMode;

    /**
     * Specifies whether or not front or back-facing polygons can be culled.
     * 
     * Default: `false`
     */
    public var clockwiseFrontFace:Bool;

    /**
     * Activates culling of polygons.
     * 
     * Default: `false`
     */
    public var culling:Bool;

    /**
     * Activates depth comparisons and updates to the depth buffer.
     * 
     * Default: `false`
     */
    public var depthTest:Bool;

    /**
     * Activates adding an offset to depth values of polygon's fragments.
     * 
     * Default: `false`
     */
    public var offsets:Bool;

    /**
     * The polygon offset.
     * 
     * Setting this property to anything other than 0 will automatically
     * enable polygon offset fill.
     * 
     * Default: `0`
     */
    public var polygonOffset:Float;
}