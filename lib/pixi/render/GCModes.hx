package pixi.render;

/**
 * The Garbage Collection mode.
 * 
 * *This enum contains values from: `Pixi.GC_MODES` for more convenient use.*
 */
enum abstract GCModes(Int) to Int from Int
{
    /**
     * Garbage collection will happen periodically automatically.
     */
    var AUTO = 0;

    /**
     * Garbage collection will need to be called manually.
     */
    var MANUAL = 1;
}