package pixi.resources;

import js.lib.Promise;
import js.html.ImageElement;
import js.html.ImageBitmap;
import pixi.enums.AlphaMode;
import pixi.textures.BaseTexture;
import pixi.textures.GLTexture;
import pixi.render.Renderer;

/**
 * Resource type for HTMLImageElement.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.resources.ImageResource.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_resources_ImageResource.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.resources.ImageResource")
extern class ImageResource extends BaseImageResource
{
    /**
     * Create a new ImageResource instance.
     * @param source Image source or URL.
     * @param options ImageResource options.
     */
    public function new(source:EitherType<ImageElement,String>, ?options:ImageResourceOptions);

    /**
     * Internal width of the resource.
     */
    override private var _width:Float;

    /**
     * Internal height of the resource.
     */
    override private var _height:Float;

    /**
     * Controls texture alphaMode field Copies from options Default
     * is `null`, copies option from baseTexture.
     */
    public var alphaMode(default, null):Null<AlphaMode>;

    /**
     * The ImageBitmap element created for HTMLImageElement.  
     * Default: `null`
     */
    public var bitmap:ImageBitmap;

    /**
     * If capable, convert the image using createImageBitmap API.  
     * Default: `Settings.CREATE_IMAGE_BITMAP`
     */
    public var createBitmap:Bool;

    /**
     * If the image should be disposed after upload.  
     * Default: `false`
     */
    public var preserveBitmap:Bool;

    /**
     * URL of the image source.
     */
    public var url:String;

    /**
     * Used to auto-detect the type of resource.
     * @param source The source object.
     * @return `true` if source is string or HTMLImageElement.
     */
    static public function test(source:EiqtherType<String,ImageElement>):Bool;

    /**
     * Clean up anything, this happens when destroying is ready.
     */
    override private function dispose():Void;

    /**
     * Returns a promise when image will be loaded and processed.
     * @param createBitmap Whether process image into bitmap.
     */
    override public function load(?createBitmap:Bool):Promise<Dynamic>;

    /**
     * Called when we need to convert image into BitmapImage.
     * Can be called multiple times, real promise is cached inside.
     * @return Cached promise to fill that bitmap.
     */
    public function process():Promise<Dynamic>;

    /**
     * Upload the image resource to GPU.
     * @param renderer Renderer to upload to.
     * @param baseTexture BaseTexture for this resource.
     * @param glTexture GLTexture to use.
     * @return True is success.
     */
    override public function upload(renderer:Renderer, baseTexture:BaseTexture, glTexture:GLTexture):Bool;
}

/**
 * The options of ImageResource constructor.
 * ***
 * Library: **core** 
 */
typedef ImageResourceOptions =
{
    /**
     * Start loading process.  
     * Default: `true`
     */
    @:optional var autoLoad:Bool;

    /**
     * Whether its required to create a bitmap before upload.  
     * Default: `Settings.CREATE_IMAGE_BITMAP`
     */
    @:optional var createBitmap:Bool;

    /**
     * Load image using cross origin.  
     * Default: `true`
     */
    @:optional var crossorigin:Bool;

    /**
     * Premultiply image alpha in bitmap.  
     * Default: `AlphaMode.UNPACK`
     */
    @:optional var alphaMode:AlphaMode;
}