package pixi.sound.filters;

/**
 * Filter for adding reverb.
 * 
 * Refactored from https://github.com/web-audio-components/simple-reverb/
 * 
 * @see Documentation: https://pixijs.io/pixi-sound/docs/PIXI.sound.filters.ReverbFilter.html
 * @see Source code: https://github.com/pixijs/pixi-sound/blob/main/src/filters/ReverbFilter.ts
 */
@:native("PIXI.sound.filters.ReverbFilter")
extern class ReverbFilter extends Filter
{
    /**
     * Create a new filter.
     * @param seconds Seconds for reverb. Default: `3`
     * @param decay The decay length. Default: `2`
     * @param reverse Reverse reverb. Default: `false`
     */
    public function new(?seconds:Float, ?decay:Float, ?reverse:Bool);

    /**
     * Decay value from `0` to `100`.
     * 
     * Default: `2`
     */
    public var decay:Float;

    /**
     * Length of reverb in seconds from `1` to `50`.
     * 
     * Default: `3`
     */
    public var seconds:Float;

    /**
     * Reverse value from `0` to `1`.
     * 
     * Default: `false`
     */
    public var reverse:Bool;
}