package pixi.sound;

import js.html.audio.AudioContext;
import pixi.sound.filters.Filter;

/**
 * Represents the audio context for playing back sounds.
 * This can represent either an HTML or WebAudio context.
 * 
 * @see Documentation: https://pixijs.io/pixi-sound/docs/PIXI.sound.IMediaContext.html
 * @see Source code: https://github.com/pixijs/pixi-sound/blob/main/src/interfaces/IMediaContext.ts
 */
extern interface IMediaContext
{
    /**
     * Reference to the Web Audio API AudioContext element, if Web Audio is available.
     */
    public var audioContext:AudioContext;

    /**
     * Collection of global filters.
     */
    public var filters:Array<Filter>;

    /**
     * `true` if all sounds are muted.
     */
    public var muted:Bool;

    /**
     * Set the paused state for all sounds.
     */
    public var paused:Bool;

    /**
     * The speed of all sounds.
     */
    public var speed:Float;

    /**
     * Volume to apply to all sounds.
     */
    public var volume:Float;

    /**
     * Destroy the context and don't use after this.
     */
    public function destroy():Void;

    /**
     * Toggle mute for all sounds.
     */
    public function toggleMute():Void;

    /**
     * Toggle pause for all sounds.
     */
    public function togglePause():Void;
}