package pixi.textures;

import haxe.extern.EitherType;
import js.lib.Promise;
import js.lib.Uint8Array;
import js.lib.Float32Array;
import js.html.CanvasElement;
import js.html.ImageElement;
import js.html.VideoElement;
import pixi.textures.BaseTexture.BaseTextureOptions;
import pixi.geom.Point;
import pixi.geom.Rectangle;

/**
 * A texture stores the information that represents an image or part of an image.
 * 
 * It cannot be added to the display list directly; instead use it as the texture
 * for a Sprite. If no frame is provided for a texture, then the whole image is used.
 * 
 * You can directly create a texture from an image and then reuse it multiple times
 * like this:
 * ```
 * var texture = Texture.from('assets/image.png');
 * var sprite1 = new Sprite(texture);
 * var sprite2 = new Sprite(texture);
 * ```
 * 
 * If you didnt pass the texture frame to constructor, it enables `noFrame` mode:
 * it subscribes on baseTexture events, it automatically resizes at the same time
 * as baseTexture.
 * 
 * Textures made from SVGs, loaded or not, cannot be used before the file finishes
 * processing. You can check for this by checking the sprite's _textureID property.
 * ```
 * var texture = Texture.from('assets/image.svg');
 * var sprite1 = new Sprite(texture);
 * //sprite1._textureID should not be undefined if the texture has finished processing the SVG file
 * ```
 * You can use a ticker or rAF to ensure your sprites load the finished textures
 * after processing. See issue #3068.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Texture.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_Texture.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Texture")
extern class Texture extends EventEmitter
{
    /**
     * Create a new Texture instance.
     * @param baseTexture The base texture source to create the texture from.
     * @param frame The rectangle frame of the texture to show.
     * @param orig The area of original texture.
     * @param trim Trimmed rectangle of original texture.
     * @param rotate indicates how the texture was rotated by texture packer. See `pixi.groupD8`.
     * @param anchor Default anchor point used for sprite placement / rotation.
     */
    public function new(baseTexture:BaseTexture, ?frame:Rectangle, ?orig:Rectangle, ?trim:Rectangle, ?rotate:Float, ?anchor:IPointData);

    /**
     * An empty texture, used often to not have to create multiple empty textures.
     * Can not be destroyed.
     */
    static public var EMPTY:Texture;

    /**
     * A white texture of 16x16 size, used for graphics and other things.
     * Can not be destroyed.
     */
    static public var WHITE:Texture;

    /**
     * This is the area of the BaseTexture image to actually copy to the
     * Canvas / WebGL when rendering, irrespective of the actual frame size
     * or placement (which can be influenced by trimmed texture atlases)
     */
    public var _frame:Rectangle;

    /**
     * Update ID is observed by sprites and TextureMatrix instances.
     * Call updateUvs() to increment it.
     */
    private var _updateID:Int;

    /**
     * The WebGL UV data cache. Can be used as quad UV.
     */
    private var _uvs:TextureUvs;

    /**
     * The base texture that this texture uses.
     */
    public var baseTexture:BaseTexture;

    /**
     * Anchor point that is used as default if sprite is created with this texture.
     * Changing the defaultAnchor at a later point of time will not update Sprite's anchor point.  
     * Default: `{0,0}`
     */
    public var defaultAnchor:Point;

    /**
     * The frame specifies the region of the base texture that this texture uses.
     * Please call updateUvs() after you change coordinates of frame manually.
     */
    public var frame:Rectangle;

    /**
     * The width of the Texture in pixels.
     */
    public var width:Int;

    /**
     * The height of the Texture in pixels.
     */
    public var height:Int;

    /**
     * Does this Texture have any frame data assigned to it?
     * 
     * This mode is enabled automatically if no frame was passed inside constructor.
     * 
     * In this mode texture is subscribed to baseTexture events, and fires `update`
     * on any change.
     * 
     * Beware, after loading or resize of baseTexture event can fired two times! If
     * you want more control, subscribe on baseTexture itself.
     * ```
     * texture.on('update', function(){});
     * ```
     * Any assignment of `frame` switches off `noFrame` mode.
     */
    public var noFrame:Bool;

    /**
     * This is the area of original texture, before it was put in atlas.
     */
    public var orig:Rectangle;

    /**
     * Returns resolution of baseTexture.
     */
    public var resolution(default, null):Float;

    /**
     * Indicates whether the texture is rotated inside the atlas set to 2 to
     * compensate for texture packer rotation set to 6 to compensate for spine
     * packer rotation can be used to rotate or mirror sprites See `pixi.groupD8`
     * for explanation.
     */
    public var rotate:Float;

    /**
     * The ids under which this Texture has been added to the texture cache.
     * This is automatically set as long as Texture.addToCache is used, but
     * may not be set if a Texture is added directly to the TextureCache array.
     */
    public var textureCacheIds:Array<String>;

    /**
     * This is the trimmed area of original texture, before it was put in atlas
     * Please call `updateUvs()` after you change coordinates of `trim` manually.
     */
    public var trim:Rectangle;

    /**
     * Default TextureMatrix instance for this texture By default that object is
     * not created because its heavy.
     */
    public var uvMatrix:TextureMatrix;

    /**
     * This will let the renderer know if the texture is valid. If it's not then
     * it cannot be rendered.
     */
    public var valid:Bool;

    /**
     * Adds a Texture to the global TextureCache.
     * This cache is shared across the whole PIXI object.
     * @param texture The Texture to add to the cache.
     * @param id The id that the Texture will be stored against.
     */
    static public function addToCache(texture:Texture, id:String):Void;

    /**
     * Helper function that creates a new Texture based on the source you provide.
     * The source can be - frame id, image url, video url, canvas element, video
     * element, base texture.
     * @param source Source to create texture from.
     * @param options See `BaseTexture`'s constructor for options.
     * @param strict Enforce strict-mode, see `Settings.STRICT_TEXTURE_CACHE`.
     * @return The newly created texture.
     */
    static public function from(source:EitherType<String,EitherType<ImageElement,EitherType<CanvasElement.EitherType<VideoElement,BaseTexture>>>>, ?options:BaseTextureOptions, ?strict:Bool):Texture;

    /**
     * Create a new Texture with a BufferResource from a Float32Array.
     * RGBA values are floats from `0` to `1`.
     * @param buffer The optional array to use, if no data is provided, a new Float32Array is created.
     * @param width Width of the resource.
     * @param height Height of the resource.
     * @param options See `BaseTexture`'s constructor for options.
     * @return The resulting new BaseTexture.
     */
    static public function fromBuffer(buffer:EitherType<Float32Array,Uint8Array>, ?width:Int, ?height:Int, ?options:BaseTextureOptions):Texture;

    /**
     * Create a texture from a source and add to the cache.
     * @param source The input source.
     * @param imageUrl File name of texture, for cache and resolving resolution.
     * @param name Human readable name for the texture cache. If no name is specified,
     *             only `imageUrl` will be used as the cache ID.
     * @return Output texture.
     */
    static public function fromLoader(source:EitherType<ImageElement,CanvasElement>, ?imageUrl:String, ?name:String):Texture;

    /**
     * Useful for loading textures via URLs.
     * Use instead of `Texture.from` because it does a better job of handling
     * failed URLs more effectively. This also ignores `Settings.STRICT_TEXTURE_CACHE`.
     * Works for Videos, SVGs, Images.
     * @param url The remote URL to load.
     * @param options Optional options to include.
     * @return A Promise that resolves to a Texture.
     */
    static public function fromURL(url:String, ?options:Dynamic);Promise<Texture>;

    /**
     * Remove a Texture from the global TextureCache.
     * @param texture ID Of a Texture to be removed, or a Texture instance itself.
     * @return The Texture that was removed.
     */
    static public function removeFromCache(texture:EitherType<String,Texture>):Null<Texture>;

    /**
     * Utility function for BaseTexture|Texture cast.
     */
    public function castToBaseTexture():Void;

    /**
     * Creates a new texture object that acts the same as this one.
     * @return The new texture.
     */
    public function clone():Texture;

    /**
     * Destroys this texture.
     * @param destroyBase Whether to destroy the base texture as well. Default: `false`
     */
    public function destroy(?destroyBase:Bool):Void;

    /**
     * Called when the base texture is updated.
     * @param baseTexture The base texture.
     */
    private function onBaseTextureUpdated(baseTexture:BaseTexture):Void;

    /**
     * Updates this texture on the gpu.  
     * Calls the TextureResource update.  
     * If you adjusted `frame` manually, please call `updateUvs()` instead.
     */
    public function update():Void;

    /**
     * Updates the internal WebGL UV cache.  
     * Use it after you change `frame` or `trim` of the texture.  
     * Call it after changing the frame.
     */
    public function updateUvs():Void;
}