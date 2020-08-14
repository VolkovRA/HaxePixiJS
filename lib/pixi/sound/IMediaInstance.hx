package pixi.sound;

import haxe.extern.EitherType;
import pixi.interaction.EventEmitter;

/**
 * Interface for single instance return by a Sound play call.  
 * This can either be a WebAudio or HTMLAudio instance.  
 * @see Documentation: https://pixijs.io/pixi-sound/docs/PIXI.sound.IMediaInstance.html
 * @see Source code: https://github.com/pixijs/pixi-sound/blob/main/src/interfaces/IMediaInstance.ts
 * ***
 * Library: **sound** 
 */
@:native("PIXI.sound.IMediaInstance")
extern class IMediaInstance extends EventEmitter
{
    /**
     * Auto-incrementing ID for the instance.
     */
    public var id(default, null):Int;

    /**
     * If the current instance is set to loop.
     */
    public var loop:Bool;

    /**
     * Set the muted state of the instance.
     */
    public var muted:Bool;

    /**
     * If the instance is paused, if the sound or global context is paused, this could still be false.
     */
    public var paused:Bool;

    /**
     * Current progress of the sound from `0` to `1`.
     */
    public var progress(default, null):Float;

    /**
     * Current speed of the instance.  
     * This is not the actual speed since it takes into account the global context and the sound volume.
     */
    public var speed:Float;

    /**
     * Current volume of the instance.  
     * This is not the actual volume since it takes into account the global context and the sound volume.
     */
    public var volume:Float;

    /**
     * Fired when the sound when progress updates.
     * ```
     * Sound.play('foo')
     *     .set('volume', 0.5)
     *     .set('speed', 0.8);
     * ```
     * @param name Name of property, like: `speed`, `volume`, `muted`, `loop`, `paused`.
     * @param value The total number of seconds of audio.
     */
    public function set(name:String, value:EitherType<Float, Bool>):IMediaInstance;

    /**
     * Stop the current instance from playing.
     */
    public function stop():Void;
}

/**
 * The events of IMediaInstance instances.
 * ***
 * Library: **sound** 
 */
@:enum abstract MediaInstanceEvent(String) to String from String
{
    /**
     * Fired when the sound finishes playing.
     */
    var END = "end";

    /**
     * Fired when paused state changes.
     * @param pause If the current state is paused. (Bool)
     */
    var PAUSE = "pause";

    /**
     * Fired when instance is paused.
     */
    var PAUSED = "paused";

    /**
     * Fired when the sound when progress updates.
     * @param progress Playback progress from `0` to `1`. (Float)
     * @param duration The total number of seconds of audio. (Float)
     */
    var PROGRESS = "progress";

    /**
     * Fired when instance is resumed.
     */
    var RESUMED = "resumed";

    /**
     * Fired when the sound starts playing.
     */
    var START = "start";
}