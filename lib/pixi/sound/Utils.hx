package pixi.sound;

import haxe.Constraints.Function;
import haxe.extern.EitherType;
import js.html.CanvasGradient;
import js.html.CanvasPattern;

/**
 * Utilities that work with sounds.
 * @see Documentation: https://pixijs.io/pixi-sound/docs/PIXI.sound.utils.html#.extensions
 * @see Source code: https://github.com/pixijs/pixi-sound/tree/main/src/utils
 * ***
 * Library: **sound** 
 */
@:native("PIXI.sound.utils")
extern class Utils
{
    /**
     * The list of extensions that can be played.
     */
    static public var extensions(default, null):Array<String>;

    /**
     * The list of browser supported audio formats.
     */
    static public var supported(default, null):SupportedFormats;

    /**
     * Create a new "Audio" stream based on given audio path and project uri; returns the audio object.
     * @param fileName Full path of the file to play.
     * @param callback Callback when complete.
     * @return New audio element alias.
     */
    static public function playOnce(fileName:String, callback:Function):String;

    /**
     * Render image as Texture. **Only supported with WebAudio**
     * @param sound Instance of sound to render.
     * @param options Custom rendering options.
     * @return Result texture.
     */
    static public function render(sound:Sound, ?options:RenderOptions):BaseTexture;

    /**
     * Resolve a URL with different formats in glob pattern to a path based on the supported browser format.
     * 
     * For instance: `sounds/music.{ogg,mp3}`, would resolve to `sounds/music.ogg` if `ogg` support is found,
     * otherwise, fallback to `sounds.music.mp3`.
     * 
     * @param source Path to resolve or Resource, if a Resource object is provided, automatically updates the
     *               extension and url of that object.
     * @return The format to resolve to.
     */
    static public function resolveUrl(source:EitherType<String,ResourceLoader>):String;

    /**
     * Create a new sound for a sine wave-based tone. **Only supported with WebAudio**
     * @param hertz Frequency of sound. Default: `200`
     * @param seconds Duration of sound in seconds. Default: `1`
     * @return New sound.
     */
    static public function sineTone(?hertz:Float, ?seconds:Float):Sound;
}

/**
 * Custom rendering options.
 * ***
 * Library: **sound** 
 */
typedef RenderOptions = 
{
    /**
     * Width of the render.  
     * Default: `512`
     */
    var width:Int;

    /**
     * Height of the render.  
     * Default: `128`
     */
    var height:Int;

    /**
     * Fill style for waveform.  
     * Default: `black`
     */
    var fill:EitherType<String, EitherType<CanvasPattern, CanvasGradient>>;
}

/**
 * The list of browser supported audio formats.
 * ***
 * Library: **sound** 
 */
typedef SupportedFormats = 
{
    /**
     * `true` if file-type is supported.
     */
    var mp3:Bool;	

    /**
     * `true` if file-type is supported.
     */
    var ogg:Bool;	

    /**
     * `true` if file-type is supported.
     */
    var oga:Bool;	

    /**
     * `true` if file-type is supported.
     */
    var opus:Bool;	

    /**
     * `true` if file-type is supported.
     */
    var mpeg:Bool;	

    /**
     * `true` if file-type is supported.
     */
    var wav:Bool;	

    /**
     * `true` if file-type is supported.
     */
    var aiff:Bool;	

    /**
     * `true` if file-type is supported.
     */
    var wma:Bool;	

    /**
     * `true` if file-type is supported.
     */
    var mid:Bool;	
}