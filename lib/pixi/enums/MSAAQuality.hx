package pixi.enums;

/**
 * Constants for multi-sampling antialiasing.
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.MSAA_QUALITY` for more convenience.*
 */
enum abstract MSAAQuality(Int) to Int from Int
{
    /**
     * No multisampling for this renderTexture.
     */
    var NONE = 0;

    /**
     * Try 2 samples.
     */
    var LOW = 2;

    /**
     * Try 4 samples.
     */
    var MEDIUM = 4;

    /**
     * Try 8 samples.
     */
    var HIGH = 8;
}