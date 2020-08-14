package pixi.enums;

/**
 * Constants that specify float precision in shaders.
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.PRECISION` for more convenience.*
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