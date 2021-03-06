package pixi.sound.filters;

/**
 * Combine all channels into mono channel.
 * @see Documentation: https://pixijs.io/pixi-sound/docs/PIXI.sound.filters.MonoFilter.html
 * @see Source code: https://github.com/pixijs/pixi-sound/blob/main/src/filters/MonoFilter.ts
 * ***
 * Library: **sound** 
 */
@:native("PIXI.sound.filters.MonoFilter")
extern class MonoFilter extends Filter
{
    /**
     * Create a new MonoFilter instance.
     */
    public function new();
}