package pixi.textures;

import pixi.enums.ScaleMode;
import pixi.render.MaskData;
import pixi.utils.CanvasRenderTarget;

/**
 * A BaseRenderTexture is a special texture that allows any PixiJS
 * display object to be rendered to it.
 * 
 * **Hint:** All DisplayObjects (i.e. Sprites) that render to a
 * BaseRenderTexture should be preloaded otherwise black rectangles
 * will be drawn instead.
 * 
 * A BaseRenderTexture takes a snapshot of any Display Object given
 * to its render method. The position and rotation of the given
 * Display Objects is ignored. For example:
 * ```
 * var renderer = Pixi.autoDetectRenderer();
 * var baseRenderTexture = new BaseRenderTexture({ width: 800, height: 600 });
 * var renderTexture = new RenderTexture(baseRenderTexture);
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
 * The Sprite in this case will be rendered using its local transform.
 * To render this sprite at 0,0 you can clear the transform:
 * ```
 * sprite.setTransform();
 * 
 * var baseRenderTexture = new BaseRenderTexture({ width: 100, height: 100 });
 * var renderTexture = new RenderTexture(baseRenderTexture);
 * 
 * renderer.render(sprite, renderTexture);  // Renders to center of RenderTexture
 * ```
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.BaseRenderTexture.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_renderTexture_BaseRenderTexture.js.html
 * ***
 * Library: **core** 
 */
 @:native("PIXI.BaseRenderTexture")
extern class BaseRenderTexture extends BaseTexture 
{
    /**
     * Create a new BaseRenderTexture instance.
     * @param options Options.
     */
    public function new(?options:BaseRenderTextureOptions);

    /**
     * A reference to the canvas render target. (We only need one as this can be shared across renderers)
     */
    private var _canvasRenderTarget:CanvasRenderTarget;

    /**
     * The data structure for the filters.
     */
    public var filterStack:Array<Dynamic>;

    /**
     * The data structure for the stencil masks.
     */
    public var maskStack:Array<MaskData>;

    /**
     * Destroys this texture.
     */
    override public function destroy():Void;

    /**
     * Frees the texture and framebuffer from WebGL memory without destroying this texture object.
     * This means you can still use the texture later which will upload it to GPU memory again.
     * 
     * @event BaseTextureEvent.DISPOSE
     */
    override public function dispose():Void;

    /**
     * Resizes the BaseRenderTexture.
     * @param width The width to resize to.
     * @param height The height to resize to.
     */
    public function resize(width:Int, height:Int):Void;
    
    /**
     * Fired when a not-immediately-available source finishes loading.
     * @param baseTexture Resource loaded.
     */
    override public function loaded(baseTexture:BaseTexture):Void;
}

/**
 * The options to BaseRenderTexture constructor.
 * ***
 * Library: **core** 
 */
typedef BaseRenderTextureOptions =
{
    /**
     * The width of the base render texture.  
     * Default: `100`
     */
    @:optional var width:Int;

    /**
     * The height of the base render texture.  
     * Default: `100`
     */
    @:optional var height:Int;

    /**
     * See `Pixi.SCALE_MODES` for possible values.
     */
    @:optional var scaleMode:ScaleMode;

    /**
     * The resolution / device pixel ratio of the texture being generated.  
     * Default: `1`
     */
    @:optional var resolution:Float;
}