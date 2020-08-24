package pixi.sound;

import haxe.DynamicAccess;
import haxe.extern.EitherType;
import js.html.AudioElement;
import js.lib.ArrayBuffer;
import js.lib.Error;
import js.lib.Promise;
import pixi.sound.SoundSprite;
import pixi.sound.filters.Filter;

/**
 * Sound represents a single piece of loaded media.  
 * When playing a sound PIXI.sound.IMediaInstance objects are created.
 * Properties such a volume, pause, mute, speed, etc will have an effect
 * on all instances.  
 * @see Documentation: https://pixijs.io/pixi-sound/docs/PIXI.sound.Sound.html
 * @see Source code: https://github.com/pixijs/pixi-sound/blob/main/src/Sound.ts
 * ***
 * Library: **sound** 
 */
@:native("PIXI.sound.Sound")
extern class Sound
{
    /**
     * `true` to start playing immediate after load.  
     * Default: `false`
     */
    public var autoPlay(default, null):Bool;

    /**
     * Instance of the media context.
     */
    public var context(default, null):IMediaContext;

    /**
     * Get the duration of the audio in seconds.
     */
    public var duration(default, null):Float;

    /**
     * Set the filters. Only supported with WebAudio.
     */
    public var filters:Array<Filter>;

    /**
     * Gets the list of instances that are currently being played of this sound.
     */
    public var instances(default, null):Array<IMediaInstance>;

    /**
     * `true` if the buffer is loaded.  
     * Default: `false`
     */
    public var isLoaded(default, null):Bool;

    /**
     * If the current sound is playable (loaded).
     */
    public var isPlayable(default, null):Bool;

    /**
     * `true` if the sound is currently being played.  
     * Default: `false`
     */
    public var isPlaying(default, null):Bool;

    /**
     * Gets and sets the looping.
     */
    public var loop:Bool;

    /**
     * Gets and sets the muted flag.
     */
    public var muted:Bool;

    /**
     * The constructor options.
     */
    public var options(default, null):SoundOptions;

    /**
     * Stops all the instances of this sound from playing.
     */
    public var paused(default, null):Bool;

    /**
     * `true` to immediately start preloading.  
     * Default: `false`
     */
    public var preload(default, null):Bool;

    /**
     * `true` to disallow playing multiple layered instances at once.  
     * Default: `false`
     */
    public var singleInstance:Bool;

    /**
     * The playback rate.
     */
    public var speed:Float;

    /**
     * Get the map of sprites.
     */
    public var sprites(default, null):DynamicAccess<SoundSpriteData>;

    /**
     * The file source to load.
     */
    public var url(default, null):String;

    /**
     * Gets and sets the volume.
     */
    public var volume:Float;

    /**
     * Create a new sound instance from source.
     * @param source Either the path or url to the source file. or the object of options to use.
     * @return Created sound instance.
     */
    static public function from(source:EitherType<String,EitherType<SoundOptions,EitherType<ArrayBuffer,AudioElement>>>):Sound;

    /**
     * Add a sound sprite, which is a saved instance of a longer sound. Similar to an image spritesheet.
     * ```
     * // Add a single sprite
     * sound.addSprites('squit', {
     *     start: 19,
     *     end: 19.3
     * });
     * 
     * // Add the sprite markers
     * sound.addSprites({
     *     'alien death': { start: 1, end: 2 },
     *     'boss hit': { start: 3, end: 3.5 },
     *     'escape': { start: 4, end: 7.2 },
     *     'meow': { start: 8, end: 8.5 },
     *     'numkey': { start: 9, end: 9.1 },
     *     'ping': { start: 10, end: 11 },
     *     'death': { start: 12, end: 16.2 },
     *     'shot': { start: 17, end: 18 }
     * });
     * ```
     * @param alias The unique name of the sound sprite.
     * @param data Either completed function or play options.
     * @return Sound sprite result.
     */
    @:overload(function(sprites:DynamicAccess<SoundSpriteData>):DynamicAccess<SoundSpriteData>{})
    public function addSprites(alias:String, data:SoundSpriteData):SoundSprite;

    /**
     * Destructor, safer to use SoundLibrary.remove(alias) to remove this sound.
     */
    public function destroy():Void;

    /**
     * Stops all the instances of this sound from playing.
     * @return Instance of this sound.
     */
    public function pause():Sound;

    /**
     * Play a sound sprite, which is a saved instance of a longer sound. Similar to an image spritesheet.
     * @param alias The unique name of the sound sprite.
     * @param data Either completed function or play options.
     * @param callback Callback when completed.
     * @return The sound instance, this cannot be reused after it is done playing. Returns a Promise if the sound has not yet loaded.
     */
    @:overload(function(options:EitherType<CompleteCallback,PlayOptions>):EitherType<IMediaInstance,Promise<IMediaInstance>>{})
    public function play(alias:String, data:EitherType<CompleteCallback,PlayOptions>, ?callback:CompleteCallback):EitherType<IMediaInstance,Promise<IMediaInstance>>;

    /**
     * Remove a one or all sounds sprites.
     * @param alias The unique name of the sound sprite.
     * @return Sound instance for chaining.
     */
    public function removeSprites(?alias:String):Sound;

    /**
     * Resuming all the instances of this sound from playing.
     * @return Instance of this sound.
     */
    public function resume():Sound;

    /**
     * Stops all the instances of this sound from playing.
     * @return Instance of this sound.
     */
    public function stop():Sound;
}

/**
 * Constructor options object.
 * ***
 * Library: **sound** 
 */
typedef SoundOptions = 
{
    /**
     * `true` to play after loading.  
     * Default: `false`
     */
    @:optional var autoPlay:Bool;

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
     * Global complete callback when play is finished.  
     * Default: `null`
     */
    @:optional var complete:CompleteCallback;

    /**
     * Call when finished loading.  
     * Default: `null`
     */
    @:optional var loaded:LoadedCallback;

    /**
     * `true` to immediately start preloading.  
     * Default: `false`
     */
    @:optional var preload:Bool;

    /**
     * `true` to loop the audio playback.  
     * Default: `false`
     */
    @:optional var loop:Bool;

    /**
     * If options is an object, the source of file.
     */
    @:optional var url:String;

    /**
     * The source, if already preloaded.  
     * Can be:
     * - js.lib.ArrayBuffer
     * - js.html.AudioElement
     */
    @:optional var source:Dynamic;

    /**
     * The map of sprite data.
     * 
     * Where a sprite is an object with a start and end, which are the times in seconds.
     * Optionally, can include a speed amount where 1 is 100% speed.
     */
    @:optional var sprites:DynamicAccess<SoundSpriteData>;
}

/**
 * Play options object.
 * ***
 * Library: **sound** 
 */
typedef PlayOptions =
{
    /**
     * When completed.
     */
    @:optional var complete:CompleteCallback;

    /**
     * If not already preloaded, callback when finishes load.
     */
    @:optional var loaded:LoadedCallback;

    /**
     * Start time offset.  
     * Default: `0`
     */
    @:optional var start:Float;

    /**
     * End time offset.
     */
    @:optional var end:Float;

    /**
     * Override default speed, default to the Sound's speed setting.
     */
    @:optional var speed:Float;

    /**
     * Override default loop, default to the Sound's loop setting.
     */
    @:optional var loop:Bool;
}

/**
 * Callback when sound is completed.
 * @param sound The instance of sound.
 */
typedef CompleteCallback = Sound->Void;

/**
 * Callback when sound is loaded.
 * @param err The callback error.
 * @param sound The instance of new sound.
 * @param instance The instance of auto-played sound.
 */
typedef LoadedCallback = Error->Sound->IMediaInstance->Void;