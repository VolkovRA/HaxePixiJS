package pixi.enums;

/**
 * Various GL texture/resources formats.
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.FORMATS` for more convenience.*
 */
enum abstract TextureFormat(Int) to Int from Int
{
    /**
     * Default: `6407`
     */
    var RGB = 6407;

    /**
     * Default: `6408`
     */
    var RGBA = 6408;

    /**
     * Default: `6406`
     */
    var ALPHA = 6406;

    /**
     * Default: `6409`
     */
    var LUMINANCE = 6409;

    /**
     * Default: `6410`
     */
    var LUMINANCE_ALPHA = 6410;

    /**
     * Default: `6402`
     */
    var DEPTH_COMPONENT = 6402;

    /**
     * Default: `34041`
     */
    var DEPTH_STENCIL = 34041;
}