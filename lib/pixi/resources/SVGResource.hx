package pixi.resources;

import haxe.extern.EitherType;
import js.lib.RegExp;
import pixi.geom.ISize;

/**
 * Resource type for SVG elements and graphics.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.resources.SVGResource.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_resources_SVGResource.js.html
 */
@:native("PIXI.resources.SVGResource")
extern class SVGResource extends BaseImageResource
{
    /**
     * Create a new SVGResource instance.
     * @param source Base64 encoded SVG element or URL for SVG file.
     * @param options Options to use.
     */
    public function new(source:String, ?options:SVGResourceOptions);

    /**
     * RegExp for SVG size.
     * 
     * Example:
     * ```
     * <svg width="100" height="100"></svg>
     * ```
     */
    static public var SVG_SIZE(default,null):EitherType<String,RegExp>;

    /**
     * A height override for rasterization on load.
     */
    public var _overrideHeight(default, null):Float;

    /**
     * A width override for rasterization on load.
     */
    public var _overrideWidth(default, null):Float;

    /**
     * The source scale to apply when rasterizing on load.
     */
    public var scale(default, null):Float;

    /**
     * Base64 encoded SVG element or URL for SVG file.
     */
    public var svg(default, null):String;

    /**
     * Get size from an svg string using regexp.
     * @param svgString A serialized svg element.
     * @return Image extension.
     */
    static public function getSize(svgString:String):ISize;

    /**
     * Used to auto-detect the type of resource.
     * @param source The source object.
     * @param extension The extension of source, if set.
     * @return Return `true`, if source is correct svg.
     */
    static public function test(source:Dynamic, extension:String):Bool;
}

/**
 * The options object to SVGResource constructor.
 */
typedef SVGResourceOptions = 
{
    /**
     * Scale to apply to SVG. Overridden by...
     */
    @:optional var scale:Float;

    /**
     * Rasterize SVG this wide. Aspect ratio preserved if height not specified.
     */
    @:optional var width:Float;

    /**
     * Rasterize SVG this high. Aspect ratio preserved if width not specified.
     */
    @:optional var height:Float;

    /**
     * Start loading right away.
     * 
     * Default: `true`
     */
    @:optional var autoLoad:Bool;
}