package pixi.textures;

import haxe.extern.EitherType;
import js.lib.Uint8Array;
import js.lib.Float32Array;
import js.html.CanvasElement;
import js.html.ImageElement;
import js.html.VideoElement;
import pixi.textures.AlphaMode;
import pixi.display.ScaleMode;
import pixi.events.EventEmitter;
import pixi.resources.Resource;

/**
 * A Texture stores the information that represents an image.
 * All textures have a base texture, which contains information about the source.
 * Therefore you can have many textures all using a single BaseTexture.
 * 
 * All textures have a base texture, which contains information about the source.
 * Therefore you can have many textures all using a single BaseTexture.
 * 
 * @event BaseTextureEvent.DISPOSE Fired when BaseTexture is destroyed.
 * @event BaseTextureEvent.ERROR Fired when a not-immediately-available source fails to load.
 * @event BaseTextureEvent.LOADED Fired when a not-immediately-available source finishes loading.
 * @event BaseTextureEvent.UPDATE Fired when BaseTexture is updated.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.BaseTexture.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_BaseTexture.js.html
 */
@:native("PIXI.BaseTexture")
extern class BaseTexture extends EventEmitter
{
    /**
     * Create a new BaseTexture instance.
     * @param resource The current resource to use, for things that aren't Resource
     *                 objects, will be converted into a Resource. Default: `null`
     * @param options Collection of options.
     */
    public function new(?resource:EitherType<String,EitherType<Resource,EitherType<ImageElement,EitherType<CanvasElement,VideoElement>>>>, ?options:BaseTextureOptions);

    /**
     * Global number of the texture batch, used by multi-texture renderers.
     */
    static public var _globalBatch:Int;

    /**
     * Number of the texture batch, used by multi-texture renderers.
     */
    public var _batchEnabled:Int;

    /**
     * Location inside texture batch, used by multi-texture renderers.
     */
    public var _batchLocation:Int;

    /**
     * How to treat premultiplied alpha, see Pixi.ALPHA_MODES.
     * 
     * Default: `AlphaMode.UNPACK`
     */
    public var alphaMode:AlphaMode;

    /**
     * Anisotropic filtering level of texture.
     * 
     * Default: `Settings.ANISOTROPIC_LEVEL`
     */
    public var anisotropicLevel:Float;

    /**
     * Currently default cache ID.
     */
    public var cacheId:String;

    /**
     * Flag if BaseTexture has been destroyed.
     */
    public var destroyed(default, null):Bool;

    /**
     * Used by TextureSystem to only update texture to the GPU when needed.
     * Please call `update()` to increment it.
     */
    public var dirtyId(default, null):Int;

    /**
     * Used by TextureSystem to only update texture style when needed.
     */
    private var dirtyStyleId:Int;

    /**
     * The pixel format of the texture.
     * 
     * Default: `Format.RGBA`
     */
    public var format:Format;

    /**
     * The width of the base texture set when the image has loaded.
     */
    public var width(default, null):Int;
    
    /**
     * The height of the base texture set when the image has loaded.
     */
    public var height(default, null):Int;

    /**
     * Whether or not the texture is a power of two, try to use power of two textures as much as you can.
     * 
     * Default: `false`
     */
    public var isPowerOfTwo(default, null):Bool;

    /**
     * Mipmap mode of the texture, affects downscaled images.
     * 
     * Default: `Settings.MIPMAP_TEXTURES`
     */
    public var mipmap:MipmapMode;

    /**
     * Whether its a part of another texture, handled by ArrayResource or CubeResource.
     */
    public var parentTextureArray:BaseTexture;

    /**
     * Pixel width of the source of this texture.
     */
    public var realWidth(default, null):Int;

    /**
     * Pixel height of the source of this texture.
     */
    public var realHeight(default, null):Int;

    /**
     * The resolution / device pixel ratio of the texture.
     * 
     * Default: `Settings.RESOLUTION`
     */
    public var resolution:Float;

    /**
     * The resource used by this BaseTexture, there can only be one resource
     * per BaseTexture, but textures can share resources.
     */
    public var resource(default, null):Resource;

    /**
     * The scale mode to apply when scaling this texture.
     * 
     * Default: `Settings.SCALE_MODE`
     */
    public var scaleMode:ScaleMode;

    /**
     * The target type.
     * 
     * Default: `Target.TEXTURE_2D`
     */
    public var target:Target;

    /**
     * The collection of alternative cache ids, since some BaseTextures can
     * have more than one ID, short name and longer full URL.
     */
    public var textureCacheIds(default, null):Array<String>;

    /**
     * Used by automatic texture Garbage Collection, stores last GC tick when it was bound.
     */
    private var touched:Float;

    /**
     * The type of resource data.
     * 
     * Default: `Type.UNSIGNED_BYTE`
     */
    public var type:Type;

    /**
     * Global unique identifier for this BaseTexture.
     */
    private var uid:Int;

    /**
     * Generally speaking means when resource is loaded.
     */
    public var valid(default, null):Bool;

    /**
     * How the texture wraps.
     */
    public var wrapMode:WrapMode;

    /**
     * Adds a BaseTexture to the global BaseTextureCache.
     * This cache is shared across the whole PIXI object.
     * @param baseTexture The BaseTexture to add to the cache.
     * @param id The id that the BaseTexture will be stored against.
     */
    static public function addToCache(baseTexture:BaseTexture, id:String):Void;

    /**
     * Helper function that creates a base texture based on the source you provide.
     * The source can be - image url, image element, canvas element.
     * If the source is an image url or an image element and not in the base texture
     * cache, it will be created and loaded.
     * @param source The source to create base texture from.
     * @param options Collection of options.
     * @param strict Enforce strict-mode, see Settings.STRICT_TEXTURE_CACHE.
     * @return BaseTexture
     */
    static public function from(source:EitherType<String,EitherType<HTMLImageElement,EitherType<HTMLCanvasElement,EitherType<SVGElement,HTMLVideoElement>>>>, ?options:BaseTextureOptions, ?strict:Bool):BaseTexture;

    /**
     * Create a new BaseTexture with a BufferResource from a Float32Array. RGBA values are floats from 0 to 1.
     * @param buffer The optional array to use, if no data is provided, a new Float32Array is created.
     * @param width Width of the resource.
     * @param height Height of the resource.
     * @param options Collection of options.
     * @return BaseTexture
     */
    static public function fromBuffer(buffer:EitherType<Float32Array,Uint8Array>, width:Float, height:Float, ?options:BaseTextureOptions):BaseTexture;

    /**
     * Remove a BaseTexture from the global BaseTextureCache.
     * @param baseTexture id of a BaseTexture to be removed, or a BaseTexture instance itself.
     * @return The BaseTexture that was removed.
     */
    static public function removeFromCache(baseTexture:EitherType<String,BaseTexture>):Null<BaseTexture>;

    /**
     * Utility function for BaseTexture|Texture cast.
     */
    public function castToBaseTexture():Void;

    /**
     * Destroys this base texture.
     * The method stops if resource doesn't want this texture to be destroyed.
     * Removes texture from all caches.
     */
    public function destroy():Void;

    /**
     * Frees the texture from WebGL memory without destroying this texture object.
     * This means you can still use the texture later which will upload it to GPU memory again.
     * 
     * @see BaseTextureEvent.DISPOSE
     */
    public function dispose():Void;

    /**
     * Get the drawable source, such as HTMLCanvasElement or HTMLImageElement
     * suitable for rendering with CanvasRenderer. Provided by **@pixi/canvas-renderer** package.
     * @return Source to render with CanvasRenderer.
     */
    public function getDrawableSource():ICanvasImageSource;

    /**
     * Sets real size of baseTexture, preserves current resolution.
     * @param realWidth Full rendered width.
     * @param realHeight Full rendered height.
     * @param resolution Optionally set resolution.
     * @return This.
     */
    public function setRealSize(realWidth:Float, realHeight:Float, ?resolution:Float):BaseTexture;

    /**
     * Changes resolution.
     * @param resolution Res.
     * @return This.
     */
    public function setResolution(resolution:Float):BaseTexture;

    /**
     * Sets the resource if it wasn't set. Throws error if resource already present.
     * @param resource That is managing this BaseTexture.
     * @return This.
     */
    public function setResource(resource:Resource):BaseTexture;

    /**
     * Changes w/h/resolution. Texture becomes valid if width and height are greater than zero.
     * @param width Visual width.
     * @param height Visual height.
     * @param resolution Optionally set resolution.
     * @return This.
     */
    public function setSize(width:Float, height:Float, ?resolution:Float):BaseTexture;

    /**
     * Changes style options of BaseTexture.
     * @param scaleMode Pixi scalemode.
     * @param mipmap Enable mipmaps.
     * @return This.
     */
    public function setStyle(?scaleMode:ScaleMode, ?mipmap:MipmapMode):BaseTexture;

    /**
     * Invalidates the object.
     * Texture becomes valid if width and height are greater than zero.
     */
    public function update():Void;
}

/**
 * The options to BaseTexture constructor.
 */
typedef BaseTextureOptions =
{
    /**
     * If mipmapping is enabled for texture.
     * 
     * Default: `Settings.MIPMAP_TEXTURES`
     */
    @:optional var mipmap:MipmapMode;

    /**
     * Anisotropic filtering level of texture.
     * 
     * Default: `Settings.ANISOTROPIC_LEVEL`
     */
    @:optional var anisotropicLevel:Float;

    /**
     * Wrap mode for textures.
     * 
     * Default: `Settings.WRAP_MODE`
     */
    @:optional var wrapMode:WrapMode;

    /**
     * Default scale mode, linear, nearest.
     * 
     * Default: `Settings.SCALE_MODE`
     */
    @:optional var scaleMode:ScaleMode;

    /**
     * GL format type.
     * 
     * Default: `Foramt.RGBA`
     */
    @:optional var format:Foramt;

    /**
     * GL data type.
     * 
     * Default: `Type.UNSIGNED_BYTE`
     */
    @:optional var type:Type;

    /**
     * GL texture target.
     * 
     * Default: `Target.TEXTURE_2D`
     */
    @:optional var target:Target;

    /**
     * Pre multiply the image alpha.
     * 
     * Default: `AlphaMode.UNPACK`
     */
    @:optional var alphaMode:AlphaMode;

    /**
     * Width of the texture.
     * 
     * Default: `0`
     */
    @:optional var width:Int;

    /**
     * Height of the texture.
     * 
     * Default: `0`
     */
    @:optional var height:Int;

    /**
     * Resolution of the base texture.
     */
    @:optional var resolution:Float;

    /**
     * Optional resource options.
     * @see `Resources.autoDetectResource()` http://pixijs.download/release/docs/PIXI.resources.html#.autoDetectResource
     */
    @:optional var resourceOptions:Dynamic;
}