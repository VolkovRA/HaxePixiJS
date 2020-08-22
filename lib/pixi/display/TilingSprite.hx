package pixi.display;

import haxe.extern.EitherType;
import js.html.CanvasElement;
import js.html.VideoElement;
import pixi.textures.TextureMatrix;
import pixi.geom.ObservablePoint;
import pixi.geom.Point;
import pixi.geom.Transform;
import pixi.geom.Rectangle;
import pixi.textures.Texture;
import pixi.textures.BaseTexture;

/**
 * A tiling sprite is a fast way of rendering a tiling image.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.TilingSprite.html
 * @see Source code: http://pixijs.download/release/docs/packages_sprite-tiling_src_TilingSprite.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.TilingSprite")
extern class TilingSprite extends Sprite
{
    /**
     * Create a new TilingSprite instance.
     * @param texture The texture of the tiling sprite.
     * @param width The width of the tiling sprite. Default: `100`
     * @param height The height of the tiling sprite. Default: `100`
     */
    public function new(texture:Texture, ?width:Float, ?height:Float);

    /**
     * Changes frame clamping in corresponding textureTransform, shortcut
     * Change to -0.5 to add a pixel to the edge, recommended for transparent
     * trimmed textures in atlas.
     * 
     * Default: `0.5`
     */
    public var clampMargin:Float;

    /**
     * The offset of the image that is being tiled.
     */
    public var tilePosition:ObservablePoint;

    /**
     * The scaling of the image that is being tiled.
     */
    public var tileScale:ObservablePoint;

    /**
     * Tile transform.
     */
    public var tileTransform:Transform;

    /**
     * Matrix that is applied to UV to get the coords in Texture normalized
     * space to coords in BaseTexture space.
     */
    public var uvMatrix:TextureMatrix;

    /**
     * Whether or not anchor affects uvs.  
     * Default: `false`
     */
    public var uvRespectAnchor:Bool;

    /**
     * Helper function that creates a new tiling sprite based on the source
     * you provide. The source can be - frame id, image url, video url,
     * canvas element, video element, base texture.
     * @param source Source to create texture from.
     * @param options See [BaseTexture](http://pixijs.download/release/docs/PIXI.BaseTexture.html)'s constructor for options.
     * @return The newly created texture.
     */
    static public function from(source:EitherType<String, EitherType<Texture, EitherType<CanvasElement, VideoElement>>>, options:BaseTextureOptions):TilingSprite;

    /**
     * Checks if a point is inside this tiling sprite.
     * @param point The point to check.
     * @return Whether or not the sprite contains the point.
     */
    override public function containsPoint(point:IPointData):Bool;

    /**
     * Destroys this sprite and optionally its texture and children.
     * @param destroy Options parameter. A boolean will act as if all options
     *                have been set to that value.
     */
    override public function destroy(?destroy:EitherType<Bool,TilingSpriteDestroyOptions>):Void;

    /**
     * Gets the local bounds of the sprite object.
     * @param rect The output rectangle.
     * @return The bounds.
     */
    override public function getLocalBounds(?rect:Rectangle):Rectangle;
}

/**
 * The options of destroy mthod to TilingSprite.
 */
typedef TilingSpriteDestroyOptions =
{
    /**
     * If set to true, all the children will have their destroy method
     * called as well. 'options' will be passed on to those calls.  
     * Default: `false`
     */
    @:optional var children:Bool;

    /**
     * Should it destroy the current texture of the sprite as well.  
     * Default: `false`
     */
    @:optional var texture:Bool;

    /**
     * Should it destroy the base texture of the sprite as well.  
     * Default: `false`
     */
    @:optional var baseTexture:Bool;
}