package pixi.filters;

/**
 * Applies a reflection effect to simulate the reflection on water with waves.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.ReflectionFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_reflection_src_ReflectionFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.ReflectionFilter")
extern class ReflectionFilter extends Filter
{
    /**
     * Create a new ReflectionFilter instance.
     * @param options The optional parameters of Reflection effect.
     */
    public function new(?options:ReflectionFilterOptions);

    /**
     * Starting and ending alpha values.  
     * Default: `[1,1]`
     */
    public var alpha:Array<Float>;

    /**
     * Starting and ending amplitude of waves.  
     * Default: `[0,20]`
     */
    public var amplitude:Array<Float>;

    /**
     * Vertical position of the reflection point, default is 50% (middle) smaller
     * numbers produce a larger reflection, larger numbers produce a smaller reflection.  
     * Default: `0.5`
     */
    public var boundary:Float;

    /**
     * `true` to reflect the image, `false` for waves-only.  
     * Default: `true`
     */
    public var mirror:Bool;

    /**
     * Time for animating position of waves.  
     * Default: `0`
     */
    public var time:Float;

    /**
     * Starting and ending length of waves.  
     * Default: `[30,100]`
     */
    public var waveLength:Array<Float>;
}

/**
 * The options of ReflectionFilter.
 */
typedef ReflectionFilterOptions = 
{
    /**
     * `true` to reflect the image, `false` for waves-only.  
     * Default: `true`
     */
    @:optional var mirror:Bool;

    /**
     * Vertical position of the reflection point, default is 50% (middle)
     * smaller numbers produce a larger reflection, larger numbers produce
     * a smaller reflection.  
     * Default: `0.5`
     */
    @:optional var boundary:Float;

    /**
     * Starting and ending amplitude of waves.  
     * Default: `[0,20]`
     */
    @:optional var amplitude:Array<Float>;

    /**
     * Starting and ending length of waves.  
     * Default: `[30,100]`
     */
    @:optional var waveLength:Array<Float>;

    /**
     * Starting and ending alpha values.  
     * Default: `[1,1]`
     */
    @:optional var alpha:Array<Float>;

    /**
     * Time for animating position of waves.  
     * Default: `0`
     */
    @:optional var time:Float;
}