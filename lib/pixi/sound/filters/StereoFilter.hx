package pixi.sound.filters;

/**
 * Filter for adding Stereo panning.
 * @see Documentation: https://pixijs.io/pixi-sound/docs/PIXI.sound.filters.StereoFilter.html
 * @see Source code: https://github.com/pixijs/pixi-sound/blob/main/src/filters/StereoFilter.ts
 * ***
 * Library: **sound** 
 */
@:native("PIXI.sound.filters.StereoFilter")
extern class StereoFilter extends Filter
{
    /**
     * Create a new StereoFilter instance.
     * @param pan The amount of panning, `-1` is left, `1` is right, `0` is centered.
     */
    public function new(?pan:Float);

    /**
     * Set the amount of panning, where `-1` is left, `1` is right, and `0` is centered.
     */
    public var pan:Float;
}