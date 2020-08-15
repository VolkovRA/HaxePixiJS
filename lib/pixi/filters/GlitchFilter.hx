package pixi.filters;

import pixi.enums.GlitchFillMode;
import pixi.geom.Point;
import pixi.textures.Texture;

/**
 * The GlitchFilter applies a glitch effect to an object.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.GlitchFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_glitch_src_GlitchFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.GlitchFilter")
extern class GlitchFilter extends Filter
{
    /**
     * Create a new GlitchFilter instance.
     * @param options The more optional parameters of the filter.
     */
    public function new(?options:GlitchFilterOptions);

    /**
     * Fill mode as clamp.
     */
    static public var CLAMP(default, null):Int;

    /**
     * Fill mode as loop.
     */
    static public var LOOP(default, null):Int;

    /**
     * Fill mode as mirror.
     */
    static public var MIRROR(default, null):Int;

    /**
     * Fill mode as original.
     */
    static public var ORIGINAL(default, null):Int;

    /**
     * Fill mode as transparent.
     */
    static public var TRANSPARENT(default, null):Int;

    /**
     * `true` will divide the bands roughly based on equal amounts where as setting
     * to `false` will vary the band sizes dramatically (more random looking).  
     * Default: `false`
     */
    public var average:Bool;

    /**
     * Blue offset.
     */
    public var blue:Point;

    /**
     * Green offset.
     */
    public var green:Point;

    /**
     * Red offset.
     */
    public var red:Point;

    /**
     * The angle in degree of the offset of slices.  
     * Default: `0`
     */
    public var direction:Float;

    /**
     * The fill mode of the space after the offset.
     */
    public var fillMode:GlitchFillMode;

    /**
     * Minimum size of slices as a portion of the `sampleSize`.
     */
    public var minSize:Float;

    /**
     * The maximum offset value for each of the slices.
     */
    public var offset:Float;

    /**
     * Manually set custom slices offset of displacement bitmap, this is a collection
     * of values from -1 to 1. To change the max offset value set `offset`.
     */
    public var offsets:Array<Float>;

    /**
     * Height of the displacement map canvas.
     */
    public var sampleSize(default, null):Float;

    /**
     * A seed value for randomizing color offset.
     * Animating this value to `Math.random()` produces a twitching effect.
     */
    public var seed:Float;

    /**
     * Manually custom slices size (height) of displacement bitmap.
     */
    public var sizes:Array<Float>;

    /**
     * The count of slices.  
     * Default: `5`
     */
    public var slices:Float;

    /**
     * The displacement map is used to generate the bands.
     * If using your own texture, `slices` will be ignored.
     */
    public var texture(default, null):Texture;

    /**
     * Removes all references.
     */
    public function destroy():Void;

    /**
     * Redraw displacement bitmap texture, advanced usage.
     */
    public function redraw():Void;

    /**
     * Regenerating random size, offsets for slices.
     */
    public function refresh():Void;

    /**
     * Shuffle the sizes of the slices, advanced usage.
     */
    public function shuffle():Void;
}

/**
 * The options of GlitchFilter.
 */
typedef GlitchFilterOptions = 
{
    /**
     * The maximum number of slices.  
     * Default: `5`
     */
    @:optional var slices:Float;

    /**
     * The maximum offset amount of slices.  
     * Default: `100`
     */
    @:optional var offset:Float;

    /**
     * The angle in degree of the offset of slices.  
     * Default: `0`
     */
    @:optional var direction:Float;

    /**
     * The fill mode of the space after the offset.  
     * Default: `GlitchFillMode.TRANSPARENT`
     */
    @:optional var fillMode:GlitchFillMode;

    /**
     * A seed value for randomizing glitch effect.  
     * Default: `0`
     */
    @:optional var seed:Float;

    /**
     * `true` will divide the bands roughly based on equal amounts where as
     * setting to `false` will vary the band sizes dramatically (more random looking).  
     * Default: `false`
     */
    @:optional var average:Bool;

    /**
     * Minimum size of individual slice. Segment of total `sampleSize`.  
     * Default: `8`
     */
    @:optional var minSize:Float;

    /**
     * The resolution of the displacement map texture.  
     * Default: `512`
     */
    @:optional var sampleSize:Float;

    /**
     * Red channel offset.  
     * Default: `[0,0]`
     */
    @:optional var red:Array<Float>;

    /**
     * Green channel offset.  
     * Default: `[0,0]`
     */
    @:optional var green:Array<Float>;

    /**
     * Blue channel offset.  
     * Default: `[0,0]`
     */
    @:optional var blue:Array<Float>;
}