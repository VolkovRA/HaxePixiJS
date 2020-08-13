package pixi;

/**
 * Different types of environments for WebGL.
 * 
 * *This enum contains values from: `Pixi.ENV` for more convenient use.*
 */
enum abstract Environment(Int) to Int from Int
{
    /**
     * Used for older v1 WebGL devices.
     * 
     * PixiJS will aim to ensure compatibility with older / less advanced devices.
     * If you experience unexplained flickering prefer this environment.
     */
    var WEBGL_LEGACY = 0;

    /**
     * Version 1 of WebGL.
     */
    var WEBGL = 1;

    /**
     * Version 2 of WebGL.
     */
    var WEBGL2 = 2;
}