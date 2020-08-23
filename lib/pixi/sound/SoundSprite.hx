package pixi.sound;

import haxe.extern.EitherType;
import js.lib.Promise;
import pixi.sound.Sound;

/**
 * Object that represents a single Sound's sprite.
 * @see Documentation: https://pixijs.io/pixi-sound/docs/PIXI.sound.SoundSprite.html
 * @see Source code: https://github.com/pixijs/pixi-sound/blob/main/src/sprites/SoundSprite.ts
 * ***
 * Library: **sound** 
 */
@:native("PIXI.sound.SoundSprite")
extern class SoundSprite
{
    /**
     * Create a new sound sprite.
     * @param parent The parent sound.
     * @param options Data associated with object.
     */
    public function new(parent:Sound, options:SoundSpriteData);

    /**
     * The duration of the sound in seconds.
     */
    public var duration(default, null):Float;

    /**
     * The ending location in seconds.
     */
    public var end(default, null):Float;

    /**
     * Whether to loop the sound sprite.
     */
    public var loop(default, null):Bool;

    /**
     * The reference sound.
     */
    public var parent(default, null):Sound;

    /**
     * The speed override where 1 is 100% speed playback.
     */
    public var speed(default, null):Float;

    /**
     * The starting location in seconds.
     */
    public var start(default, null):Float;

    /**
     * Play the sound sprite.
     * @param complete Function call when complete.
     * @return Sound instance being played.
     */
    public function play(?complete:CompleteCallback):EitherType<IMediaInstance,Promise<IMediaInstance>>;

    /**
     * Destroy and don't use after this.
     */
    public function destroy():Void;
}

/**
 * Options of sound sprite.
 * ***
 * Library: **sound** 
 */
typedef SoundSpriteData =
{
    /**
     * The start time in seconds.
     */
    var start:Float;

    /**
     * The end time in seconds.
     */
    var end:Float;

    /**
     * The optional speed, if not speed, uses the default speed of the parent.
     */
    @:optional var speed:Float;
}