package pixi.enums;

/**
 * The Garbage Collection mode.
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.GC_MODES` for more convenience.*
 */
enum abstract GCMode(Int) to Int from Int
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