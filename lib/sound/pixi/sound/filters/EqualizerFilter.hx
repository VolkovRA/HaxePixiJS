package pixi.sound.filters;

/**
 * Filter for adding equalizer bands.
 * 
 * @see Documentation: https://pixijs.io/pixi-sound/docs/PIXI.sound.filters.EqualizerFilter.html
 * @see Source code: https://github.com/pixijs/pixi-sound/blob/main/src/filters/EqualizerFilter.ts
 */
@:native("PIXI.sound.filters.EqualizerFilter")
extern class EqualizerFilter extends Filter
{
    /**
     * Create a new filter.
     * @param f32 Default gain for 32 Hz. Default: `0`
     * @param f64 Default gain for 64 Hz. Default: `0`
     * @param f125 Default gain for 125 Hz. Default: `0`
     * @param f250 Default gain for 250 Hz. Default: `0`
     * @param f500 Default gain for 500 Hz. Default: `0`
     * @param f1k Default gain for 1000 Hz. Default: `0`
     * @param f2k Default gain for 2000 Hz. Default: `0`
     * @param f4k Default gain for 4000 Hz. Default: `0`
     * @param f8k Default gain for 8000 Hz. Default: `0`
     * @param f16k Default gain for 16000 Hz. Default: `0`
     */
    public function new (   ?f32:Float,
                            ?f64:Float,
                            ?f125:Float,
                            ?f250:Float,
                            ?f500:Float,
                            ?f1k:Float,
                            ?f2k:Float,
                            ?f4k:Float,
                            ?f8k:Float,
                            ?f16k:Float
    );

    /**
     * Gain at 1 KHz frequencey.
     * 
     * Default: `0`
     */
    public var f1k:Float;

    /**
     * Gain at 2 KHz frequencey.
     * 
     * Default: `0`
     */
    public var f2k:Float;

    /**
     * Gain at 4 KHz frequencey.
     * 
     * Default: `0`
     */
    public var f4k:Float;

    /**
     * Gain at 8 KHz frequencey.
     * 
     * Default: `0`
     */
    public var f8k:Float;

    /**
     * Gain at 16 KHz frequencey.
     * 
     * Default: `0`
     */
    public var f16k:Float;

    /**
     * Gain at 32 Hz frequencey.
     * 
     * Default: `0`
     */
    public var f32:Float;

    /**
     * Gain at 64 Hz frequencey.
     * 
     * Default: `0`
     */
    public var f64:Float;

    /**
     * Gain at 125 Hz frequencey.
     * 
     * Default: `0`
     */
    public var f125:Float;

    /**
     * Gain at 250 Hz frequencey.
     * 
     * Default: `0`
     */
    public var f250:Float;

    /**
     * Gain at 500 Hz frequencey.
     * 
     * Default: `0`
     */
    public var f500:Float;

    /**
     * Band at 1000 Hz.
     */
    static public var F1K(default, null):Float;

    /**
     * Band at 2000 Hz.
     */
    static public var F2K(default, null):Float;

    /**
     * Band at 4000 Hz.
     */
    static public var F4K(default, null):Float;

    /**
     * Band at 8000 Hz.
     */
    static public var F8K(default, null):Float;

    /**
     * Band at 16000 Hz.
     */
    static public var F16K(default, null):Float;

    /**
     * Band at 32 Hz.
     */
    static public var F32(default, null):Float;

    /**
     * Band at 64 Hz.
     */
    static public var F64(default, null):Float;

    /**
     * Band at 125 Hz.
     */
    static public var F125(default, null):Float;

    /**
     * Band at 250 Hz.
     */
    static public var F250(default, null):Float;

    /**
     * Band at 500 Hz.
     */
    static public var F500(default, null):Float;

    /**
     * Get gain amount on a specific frequency.
     * @return The amount of gain set.
     */
    public function getGain():Float;

    /**
     * Reset all frequency bands to have gain of `0`.
     */
    public function reset():Void;

    /**
     * Set gain on a specific frequency.
     * @param frequency The frequency, see EqualizerFilter.F* for bands.
     * @param gain Recommended -40 to 40. Default: `0`
     */
    public function setGain(frequency:Float, ?gain:Float):Void;
}