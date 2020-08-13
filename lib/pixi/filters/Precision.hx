package pixi.filters;

/**
 * Constants that specify float precision in shaders.
 * 
 * *This enum contains values from: `Pixi.PRECISION` for more convenient use.*
 */
enum abstract Precision(String) to String from String
{
    /**
     * Default: `lowp`
     */
    var LOW = "lowp";

    /**
     * Default: `mediump`
     */
    var MEDIUM = "mediump";

    /**
     * Default: `highp`
     */
    var HIGH = "highp";
}