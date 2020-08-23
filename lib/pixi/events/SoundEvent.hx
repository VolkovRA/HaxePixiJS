package pixi.events;

/**
 * The sounds events.  
 * This enum contains of all sounds events of PixiJS sound library.
 * @see [IMediaInstance events](https://pixijs.io/pixi-sound/docs/PIXI.sound.IMediaInstance.html#event)
 * ***
 * Library: **sound** 
 */
enum abstract SoundEvent(String) to String from String
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