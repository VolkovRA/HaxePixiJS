package pixi.sound;

import haxe.DynamicAccess;
import haxe.extern.EitherType;
import js.lib.ArrayBuffer;
import js.lib.Promise;
import js.html.AudioElement;
import pixi.sound.Sound;
import pixi.sound.SoundSprite;
import pixi.sound.filters.Filter;

/**
 * Contains all of the functionality for using the pixi-sound library.  
 * This is deisnged to play audio with WebAudio and fallback to HTML5.  
 * @see Documentation: https://pixijs.io/pixi-sound/docs/PIXI.sound.html#context
 * @see Source code: https://github.com/pixijs/pixi-sound/tree/main/src
 * ***
 * Library: **sound** 
 */
@:native("PIXI.sound")
extern class Sounds
{
    /**
     * The global context to use.
     */
    static public var context(default, null):IMediaContext;

    /**
     * Apply filters to all sounds.  
     * Can be useful for setting global planning or global effects.
     * **Only supported with WebAudio.**
     * ```
     * // Adds a filter to pan all output left
     * Global.filtersAll = [
     *     new StereoFilter(-1)
     * ];
     * ```
     */
    static public var filtersAll:Array<Filter>;

    /**
     * Set the global speed for all sounds.  
     * To set per-sound speed see `Global.speed()`.
     */
    static public var speedAll:Float;

    /**
     * `true` if WebAudio is supported on the current browser.
     */
    static public var supported(default, null):Bool;

    /**
     * Do not use WebAudio, force the use of legacy.  
     * This **must** be called before loading any files.
     */
    static public var useLegacy:Bool;

    /**
     * Set the global volume for all sounds.  
     * To set per-sound volume see `Global.volume()`.
     */
    static public var volumeAll:Float;

    /**
     * Adds a new sound by alias.
     * @param alias The sound alias reference.
     * @param options Either the path or url to the source file. or the object of options to use.
     * @return Instance of the Sound object.
     */
    @:overload(function(map:DynamicAccess<EitherType<String, EitherType<ArrayBuffer, EitherType<AudioElement, AddOptions>>>>, globalOptions:AddOptions):Sound{})
    @:overload(function(alias:String, sound:Sound):Sound{})
    static public function add(alias:String, options:EitherType<String, EitherType<ArrayBuffer, EitherType<AudioElement, AddOptions>>>):Sound;

    /**
     * Closes the sound library.  
     * This will release/destroy the AudioContext(s). Can be used safely if you want to
     * initialize the sound library later. Use init method.
     */
    static public function close():Dynamic;

    /**
     * Get the length of a sound in seconds.
     * @param alias The sound alias reference.
     * @return The current duration in seconds.
     */
    static public function duration(alias:String):Float;

    /**
     * Checks if a sound by alias exists.
     * @param alias Check for alias.
     * @return `true` if the sound exists.
     */
    static public function exists(alias:String):Bool;

    /**
     * Find a sound by alias.
     * @param alias The sound alias reference.
     * @return Sound object.
     */
    static public function find(alias:String):Sound;

    /**
     * Re-initialize the sound library, this will recreate the AudioContext.  
     * If there's a hardware-failure call close and then init.
     * @return Sound instance.
     */
    static public function init():Dynamic;

    /**
     * Mutes all playing sounds.
     * @return Instance for chaining.
     */
    static public function muteAll():Dynamic;

    /**
     * Pauses a sound.
     * @param alias The sound alias reference.
     * @return Sound object.
     */
    static public function pause(alias:String):Sound;

    /**
     * Pauses any playing sounds.
     * @return Instance for chaining.
     */
    static public function pauseAll():Dynamic;

    /**
     * Plays a sound.
     * @param alias The sound alias reference.
     * @param sprite The alias of the sprite to play.
     * @return The sound instance, this cannot be reused after it is done playing. Returns `null` if the sound has not yet loaded.
     */
    @:overload(function(alias:String, options:EitherType<CompleteCallback,PlayOptions>):EitherType<IMediaInstance,Promise<IMediaInstance>>{})
    static public function play(alias:String, sprite:String):Null<IMediaInstance>;

    /**
     * Removes a sound by alias.
     * @param alias The sound alias reference.
     * @return Instance for chaining.
     */
    static public function remove(alias:String):Dynamic;

    /**
     * Stops and removes all sounds. They cannot be used after this.
     * @return Instance for chaining.
     */
    static public function removeAll():Dynamic;

    /**
     * Resumes a sound.
     * @param alias The sound alias reference.
     * @return Instance for chaining.
     */
    static public function resume(alias:String):Dynamic;

    /**
     * Resumes any sounds.
     * @return Instance for chaining.
     */
    static public function resumeAll():Dynamic;

    /**
     * Get or set the speed for a sound.
     * @param alias The sound alias reference.
     * @param speed Optional current speed to set.
     * @return The current speed.
     */
    static public function speed(alias:String, ?speed:Float):Float;

    /**
     * Stops a sound.
     * @param alias The sound alias reference.
     * @return Sound object.
     */
    static public function stop(alias:String):Sound;

    /**
     * Stops all sounds.
     * @return Instance for chaining.
     */
    static public function stopAll():Dynamic;

    /**
     * Toggle muted property for all sounds.
     * @return `true` if all sounds are muted.
     */
    static public function toggleMuteAll():Bool;

    /**
     * Toggle paused property for all sounds.
     * @return `true` if all sounds are paused.
     */
    static public function togglePauseAll():Bool;

    /**
     * Unmutes all playing sounds.
     * @return Instance for chaining.
     */
    static public function unmuteAll():Dynamic;

    /**
     * Get or set the volume for a sound.
     * @param alias The sound alias reference.
     * @param volume Optional current volume to set.
     * @return The current volume.
     */
    static public function volume(alias:String, ?volume:Float):Float;
}

/**
 * Options object.
 * ***
 * Library: **sound** 
 */
typedef AddOptions =
{
    /**
     * If options is an object, the source of file.
     */
    @:optional var url:String;

    /**
     * If sound is already preloaded, available.
     */
    @:optional var source:EitherType<ArrayBuffer, AudioElement>;

    /**
     * `true` to play after loading.  
     * Default: `false`
     */
    @:optional var autoPlay:Bool;

    /**
     * `true` to immediately start preloading.  
     * Default: `false`
     */
    @:optional var preload:Bool;

    /**
     * `true` to disallow playing multiple layered instances at once.  
     * Default: `false`
     */
    @:optional var singleInstance:Bool;

    /**
     * The amount of volume `1` = 100%.  
     * Default: `1`
     */
    @:optional var volume:Float;

    /**
     * The playback rate where `1` is 100% speed.  
     * Default: `1`
     */
    @:optional var speed:Float;

    /**
     * The map of sprite data.  
     * Where a sprite is an object with a start and end, which are the times in seconds.
     * Optionally, can include a speed amount where `1` is 100% speed.
     */
    @:optional var sprites:DynamicAccess<SoundSpriteData>;

    /**
     * Global complete callback when play is finished.  
     * Default: `null`
     */
    @:optional var complete:CompleteCallback;

    /**
     * Call when finished loading.  
     * Default: `null`
     */
    @:optional var loaded:LoadedCallback;
}