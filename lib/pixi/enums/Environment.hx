package pixi.enums;

/**
 * Different types of environments for WebGL.
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.ENV` for more convenience.*
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