package pixi.render.systems;

import haxe.extern.EitherType;
import pixi.textures.BaseTexture;
import pixi.textures.Texture;

/**
 * System plugin to the renderer to manage textures.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.TextureSystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_TextureSystem.js.html
 */
@:native("PIXI.systems.TextureSystem")
extern class TextureSystem extends System
{
    /**
     * Create a new TextureSystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * Bound textures.
     */
    public var boundTextures(default, null):Array<BaseTexture>;

    /**
     * Current location.
     */
    public var currentLocation(default, null):Float;

    /**
     * List of managed textures.
     */
    public var managedTextures(default, null):Array<BaseTexture>;

    /**
     * BaseTexture value that shows that we don't know what is bound.
     */
    public var unknownTexture(default, null):BaseTexture;

    /**
     * Bind a texture to a specific location.
     * 
     * If you want to unbind something, please use `unbind(texture)` instead
     * of `bind(null, textureLocation)`.
     * 
     * @param texture Texture to bind.
     * @param location Location to bind at. Default: `0`
     */
    public function bind(texture:EitherType<Texture,BaseTexture>, ?location:Float):Void;

    /**
     * Sets up the renderer context and necessary buffers.
     */
    public function contextChange():Void;

    /**
     * Resets texture location and bound textures.
     * Actual `bind(null, i)` calls will be performed at next `unbind()` call.
     */
    public function reset():Void;

    /**
     * Unbind a texture.
     * @param texture Texture to bind.
     */
    public function unbind(texture:BaseTexture):Void;
}