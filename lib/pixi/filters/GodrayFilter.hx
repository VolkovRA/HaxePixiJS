package pixi.filters;

/**
 * GordayFilter, originally by Alain Galvan.
 * 
 * Example:
 * ```
 * displayObject.filters = [new GodrayFilter()];
 * ```
 * 
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.GodrayFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_godray_src_GodrayFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.GodrayFilter")
extern class GodrayFilter extends Filter
{
    /**
     * Create a new GodrayFilter instance.
     * @param options Filter options.
     */
    public function new(?options:GodrayFilterOptions);

    /**
     * The angle/light-source of the rays in degrees.
     * For instance, a value of 0 is vertical rays, values of 90 or -90
     * produce horizontal rays.  
     * Default: `30`
     */
    public var angle:Float;

    /**
     * The position of the emitting point for light rays only used if
     * `parallel` is set to `false`.
     * 
     * Can be:
     * - Point.
     * - Array[Float].
     * 
     * Default: `[0,0]`
     */
    public var center:Dynamic;

    /**
     * General intensity of the effect.
     * A value closer to 1 will produce a more intense effect, where a
     * value closer to 0 will produce a subtler effect.  
     * Default: `0.5`
     */
    public var gain:Float;

    /**
     * The density of the fractal noise.
     * A higher amount produces more rays and a smaller amound produces fewer waves.  
     * Default: `2.5`
     */
    public var lacunarity:Float;

    /**
     * `true` if light rays are parallel (uses angle), `false` to use the focal `center` point.  
     * Default: `true`
     */
    public var parallel:Bool;

    /**
     * The current time.  
     * Default: `0`
     */
    public var time:Float;
}

/**
 * The options of GodrayFilter.
 */
typedef GodrayFilterOptions =
{
    /**
     * Angle/Light-source of the rays.  
     * Default: `30`
     */
    @:optional var angle:Float;

    /**
     * General intensity of the effect.  
     * Default: `0.5`
     */
    @:optional var gain:Float;

    /**
     * The density of the fractal noise.  
     * Default: `2.5`
     */
    @:optional var lacunrity:Float;

    /**
     * `true` to use `angle`, `false` to use `center`.  
     * Default: `true`
     */
    @:optional var parallel:Bool;

    /**
     * The current time position.  
     * Default: `0`
     */
    @:optional var time:Float;

    /**
     * Focal point for non-parallel rays, to use this `parallel` must be set to `false`.
     * 
     * Can be:
     * - Point.
     * - Array[Float].
     * 
     * Default: `[0,0]`
     */
    @:optional var center:Dynamic;
}