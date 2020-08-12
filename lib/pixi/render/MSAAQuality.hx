package pixi.render;

/**
 * Constants for multi-sampling antialiasing.
 * 
 * *This enum contains values from: `Pixi.MSAA_QUALITY` for more convenient use.*
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