package pixi.utils;

import pixi.geom.ISize;
import pixi.textures.BaseTexture.BaseTextureOptions;
import pixi.textures.RenderTexture;

/**
 * Experimental!
 * 
 * Texture pool, used by FilterSystem and plugins Stores collection of
 * temporary pow2 or screen-sized renderTextures.
 * 
 * If you use custom RenderTexturePool for your filters, you can use
 * methods `getFilterTexture` and `returnFilterTexture` same as in.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.RenderTexturePool.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_renderTexture_RenderTexturePool.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.RenderTexturePool")
extern class RenderTexturePool
{
    /**
     * Create a new RenderTexturePool instance.
     * @param textureOptions Options that will be passed to BaseRenderTexture constructor.
     */
    public function new(?textureOptions:BaseTextureOptions);

    /**
     * Key that is used to store fullscreen renderTextures in a pool.
     */
    static public var SCREEN_KEY(default, null):String;

    /**
     * Allow renderTextures of the same size as screen, not just pow2.
     * Automatically sets to true after `setScreenSize`.  
     * Default: `false`
     */
    public var enableFullScreen:Bool;

    /**
     * Clears the pool.
     * @param destroyTextures Destroy all stored textures. Default: `true`
     */
    public function clear(?destroyTextures:Bool):Void;

    /**
     * Creates of texture with params that were specified in pool constructor.
     * @param realWidth Width of texture in pixels.
     * @param realHeight Height of texture in pixels.
     */
    public function createTexture(realWidth:Float, realHeight:Float):RenderTexture;

    /**
     * Gets extra texture of the same size as input renderTexture.  
     * `getFilterTexture(input, 0.5)` or `getFilterTexture(0.5, input)`
     * @param input RenderTexture from which size and resolution will be copied.
     * @param resolution Override resolution of the renderTexture It overrides, it does not multiply.
     */
    public function getFilterTexture(input:RenderTexture, ?resolution:Float):RenderTexture;

    /**
     * Gets a Power-of-Two render texture or fullScreen texture.
     * @param minWidth The minimum width of the render texture in real pixels.
     * @param minHeight The minimum height of the render texture in real pixels.
     * @param resolution The resolution of the render texture. Default: `1`
     * @return The new render texture.
     */
    private function getOptimalTexture(minWidth:Int, minHeight:Int, ?resolution:Float):RenderTexture;

    /**
     * Alias for returnTexture, to be compliant with FilterSystem interface.
     * @param renderTexture The renderTexture to free.
     */
    public function returnFilterTexture(renderTexture:RenderTexture):Void;

    /**
     * Place a render texture back into the pool.
     * @param renderTexture The renderTexture to free.
     */
    public function returnTexture(renderTexture:RenderTexture):Void;

    /**
     * If screen size was changed, drops all screen-sized textures,
     * sets new screen size, sets `enableFullScreen` to true.
     * 
     * Size is measured in pixels, `renderer.view` can be passed here,
     * not `renderer.screen`.
     * @param size Initial size of screen.
     */
    public function setScreenSize(size:ISize):Void;
}