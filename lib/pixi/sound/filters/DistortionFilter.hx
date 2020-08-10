package pixi.sound.filters;

/**
 * Filter for adding adding delaynode.
 * 
 * @see Documentation: https://pixijs.io/pixi-sound/docs/PIXI.sound.filters.DistortionFilter.html
 * @see Source code: https://github.com/pixijs/pixi-sound/blob/main/src/filters/DistortionFilter.ts
 */
@:native("PIXI.sound.filters.DistortionFilter")
extern class DistortionFilter extends Filter
{
    /**
     * Create a new filter.
     * @param amount The amount of distoration from 0 to 1. Default: `0`
     */
    public function new(amount:Float);
}