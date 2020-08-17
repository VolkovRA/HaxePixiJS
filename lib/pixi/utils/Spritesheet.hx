package pixi.utils;

import haxe.Constraints.Function;
import haxe.extern.EitherType;
import pixi.textures.BaseTexture;
import pixi.textures.Texture;

/**
 * Utility class for maintaining reference to a collection of Textures on a single Spritesheet.
 * 
 * To access a sprite sheet from your code pass its JSON data file to Pixi's loader:
 * ```
 * Loader.shared.add("images/spritesheet.json").load(setup);
 * 
 * function setup() {
 *     let sheet = Loader.shared.resources["images/spritesheet.json"].spritesheet;
 *     ...
 * }
 * ```
 * With the `sheet.textures` you can create Sprite objects, `sheet.animations` can be used
 * to create an AnimatedSprite.
 * 
 * Sprite sheets can be packed using tools like TexturePacker, Shoebox or Spritesheet.js.
 * Default anchor points (see PIXI.Texture#defaultAnchor) and grouping of animation sprites
 * are currently only supported by TexturePacker.
 * ***
 * Library: **core** 
 */
@:native("PIXI.Spritesheet")
extern class Spritesheet 
{
    /**
     * Create a new Spritesheet instance.
     * @param baseTexture Reference to the source BaseTexture object.
     * @param data Spritesheet image data.
     * @param resolutionFilename The filename to consider when determining the resolution of the spritesheet. If not provided, the imageUrl will be used on the BaseTexture.
     */
    public function new(baseTexture:EitherType<BaseTexture,Texture>, data:Dynamic, ?resolutionFilename:String);

    /**
     * The maximum number of Textures to build per process.  
     * Default: `1000`
     */
    static public var BATCH_SIZE:Int;

    /**
     * A map containing the textures for each animation.
     * Can be used to create an AnimatedSprite:
     * ```
     * new AnimatedSprite(sheet.animations["anim_name"])
     * ```
     */
    public var animations:Dynamic;

    /**
     * Reference to ths source texture.
     */
    public var baseTexture:BaseTexture;

    /**
     * Reference to the original JSON data.
     */
    public var data:Dynamic;

    /**
     * The resolution of the spritesheet.
     */
    public var resolution:Float;

    /**
     * A map containing all textures of the sprite sheet.
     * Can be used to create a Sprite:  
     * ```
     * new Sprite(sheet.textures["image.png"]);
     * ```
     */
    public var textures:Dynamic;

    /**
     * Destroy Spritesheet and don't use after this.
     * @param destroyBase Whether to destroy the base texture as well. Default: `false`
     */
    public function destroy(?destroyBase:Bool):Void;

    /**
     * Parser spritesheet from loaded data.
     * This is done asynchronously to prevent creating too many Texture within a single process.
     * @param callback Callback when complete returns a map of the Textures for this spritesheet.
     */
    public function parse(callback:Function):Void;
}