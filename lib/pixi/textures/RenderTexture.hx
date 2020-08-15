package pixi.textures;

import pixi.enums.ScaleMode;
import pixi.geom.Rectangle;

/**
 * A RenderTexture is a special texture that allows any PixiJS display
 * object to be rendered to it.
 * 
 * **Hint**: All DisplayObjects (i.e. Sprites) that render to a RenderTexture
 * should be preloaded otherwise black rectangles will be drawn instead.
 * 
 * **Hint-2**: The actual memory allocation will happen on first render.
 * You shouldn't create renderTextures each frame just to delete them after,
 * try to reuse them.
 * 
 * A RenderTexture takes a snapshot of any Display Object given to its
 * render method. For example:
 * ```
 * var renderer = Pixi.autoDetectRenderer();
 * var renderTexture = RenderTexture.create({ width: 800, height: 600 });
 * var sprite = Sprite.from("spinObj_01.png");
 * 
 * sprite.position.x = 800/2;
 * sprite.position.y = 600/2;
 * sprite.anchor.x = 0.5;
 * sprite.anchor.y = 0.5;
 * 
 * renderer.render(sprite, renderTexture);
 * ```
 * 
 * The Sprite in this case will be rendered using its local transform. To
 * render this sprite at 0,0 you can clear the transform.
 * ```
 * sprite.setTransform();
 * 
 * var renderTexture = new RenderTexture.create(100, 100);
 * 
 * renderer.render(sprite, renderTexture);  // Renders to center of RenderTexture
 * ```
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.RenderTexture.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_renderTexture_RenderTexture.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.RenderTexture")
extern class RenderTexture extends Texture
{
    /**
     * Create a new RenderTexture instance.
     * @param baseRenderTexture The base texture object that this texture uses.
     * @param frame The rectangle frame of the texture to show.
     */
    public function new(baseRenderTexture:BaseRenderTexture, ?frame:Rectangle);

    /**
     * Stores `sourceFrame` when this texture is inside current filter stack.
     * You can read it inside filters.
     */
    public var filterFrame(default, null):Rectangle;

    /**
     * The key for pooled texture of FilterSystem.
     */
    private var filterPoolKey:String;

    /**
     * Shortcut to `this.baseTexture.framebuffer`, saves baseTexture cast.
     */
    public var framebuffer(default, null):Framebuffer;

    /**
     * This will let the renderer know if the texture is valid.
     * If it's not then it cannot be rendered.
     */
    override public var valid:Bool;

    /**
     * A short hand way of creating a render texture.
     * @param options Options.
     * @return The new render texture.
     */
    static public function create(?options:RenderTextureOptions):RenderTexture;

    /**
     * Resizes the RenderTexture.
     * @param width The width to resize to.
     * @param height The height to resize to.
     * @param resizeBaseTexture Should the baseTexture.width and height values be resized as well?
     *                          Default: `true`
     */
    public function resize(width:Int, height:Int, ?resizeBaseTexture:Bool):Void;

    /**
     * Changes the resolution of baseTexture, but does not change framebuffer size.
     * @param resolution The new resolution to apply to RenderTexture.
     */
    public function setResolution(resolution:Float):Void;
}

/**
 * The options to RenderTexture.
 * ***
 * Library: **core** 
 */
typedef RenderTextureOptions =
{
    /**
     * The width of the render texture.  
     * Default: `100`
     */
    @:optional var width:Int;

    /**
     * The height of the render texture.  
     * Default: `100`
     */
    @:optional var height:Int;

    /**
     * See `Pixi.SCALE_MODES` for possible values.  
     * Default: `Settings.SCALE_MODE.`
     */
    @:optional var scaleMode:ScaleMode;

    /**
     * The resolution / device pixel ratio of the texture being generated.  
     * Default: `1`
     */
    @:optional var resolution:Float;
}