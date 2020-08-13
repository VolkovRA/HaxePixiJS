package pixi.resources;

import haxe.extern.EitherType;

/**
 * Collection of base resource types supported by PixiJS.
 * 
 * Resources are used by `BaseTexture` to handle different media types such
 * as images, video, SVG graphics, etc. In most use-cases, you should not
 * instantiate the resources directly. The easy thing is to use `BaseTexture.from()`.
 * 
 * Example:
 * ```
 * var baseTexture = BaseTexture.from('path/to/image.jpg');
 * ```
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.resources.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_BaseTexture.js.html
 */
@:native("PIXI.resources")
extern class Resources
{
    /**
     * Collection of installed resource types, class must extend `Resource`.
     * 
     * Example:
     * ```
     * class CustomResource extends Resource {
     *     // MUST have source, options constructor signature
     *     // for auto-detected resources to be created.
     *     constructor(source, options) {
     *         super();
     *     }
     *     upload(renderer, baseTexture, glTexture) {
     *         // upload with GL
     *         return true;
     *     }
     *     // used to auto-detect resource
     *     static test(source, extension) {
     *         return extension === 'xyz'|| source instanceof SomeClass;
     *     }
     * }
     * // Install the new resource type
     * Resources.INSTALLED.push(CustomResource);
     * ```
     */
    static public var INSTALLED:Array<Dynamic>;

    /**
     * Create a resource element from a single source element. This auto-detects
     * which type of resource to create. All resources that are auto-detectable
     * must have a static `test` method and a constructor with the arguments
     * `(source, options?)`. Currently, the supported resources for auto-detection
     * include:
     * - `ImageResource`
     * - `CanvasResource`
     * - `VideoResource`
     * - `SVGResource`
     * - `BufferResource`
     * @param source Resource source, this can be the URL to the resource, a
     *               typed-array (for BufferResource), HTMLVideoElement, SVG data-uri
     *               or any other resource that can be auto-detected. If not resource
     *               is detected, it's assumed to be an ImageResource.
     * @param options Pass-through options to use for Resource.
     * @return The created resource.
     */
    static public function autoDetectResource(source:EitherType<String,Dynamic>, ?options:ResourceOptions):Resource;
}

/**
 * Pass-through options to use for Resource.
 */
typedef ResourceOptions =
{
    /**
     * Width of BufferResource or SVG rasterization.
     */
    @:optional var width:Float;

    /**
     * Height of BufferResource or SVG rasterization.
     */
    @:optional var height:Float;

    /**
     * Image, SVG and Video flag to start loading.
     * 
     * Default: `true`
     */
    @:optional var autoLoad:Bool;

    /**
     * SVG source scale. Overridden by width, height.
     * 
     * Default: `1`
     */
    @:optional var scale:Float;

    /**
     * Image option to create Bitmap object.
     * 
     * Default: `pixi.Settings.CREATE_IMAGE_BITMAP`
     */
    @:optional var createBitmap:Bool;

    /**
     * Image and Video option to set crossOrigin.
     * 
     * Default: `true`
     */
    @:optional var crossorigin:Bool;

    /**
     * Video option to start playing video immediately.
     * 
     * Default: `true`
     */
    @:optional var autoPlay:Bool;

    /**
     * Video option to update how many times a second the texture should be
     * updated from the video. Leave at 0 to update at every render.
     * 
     * Default: `0`
     */
    @:optional var updateFPS:Float;
}