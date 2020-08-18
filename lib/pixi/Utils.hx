package pixi;

import js.html.CanvasElement;
import pixi.enums.BlendMode;

/**
 * Generalized convenience utilities for PIXI.
 * 
 * Example:
 * ```
 * // Get info on current device
 * trace(Utils.isMobile);
 * 
 * // Convert hex color to string
 * trace(Utils.hex2string(0xff00ff)); // returns: "#ff00ff"
 * ```
 * @see Documentation: http://pixijs.download/release/docs/PIXI.utils.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.utils")
extern class Utils
{
    /**
     * A simple JS library that detects mobile devices.
     * @see https://github.com/kaimallea/isMobile
     */
    static public var isMobile:MobileDevice;

    /**
     * Maps premultiply flag and blendMode to adjusted blendMode.
     */
    static public var premultiplyBlendMode(default, null):Array<Array<Int>>;

    /**
     * TODO Describe property usage.
     */
    static public var BaseTextureCache:Dynamic;

    /**
     * TODO Describe property usage.
     */
    static public var ProgramCache:Dynamic;

    /**
     * TODO Describe property usage.
     */
    static public var TextureCache:Dynamic;

    /**
     * Node.js compatible URL utilities.
     * @see https://www.npmjs.com/package/url
     */
    static public var url:Dynamic;

    /**
     * Removes all textures from cache, but does not destroy them.
     */
    static public function clearTextureCache():Void;

    /**
     * Changes blendMode according to texture format.
     * @param blendMode Supposed blend mode.
     * @param premultiplied Whether source is premultiplied.
     * @return True blend mode for this texture.
     */
    static public function correctBlendMode(blendMode:BlendMode, premultiplied:Bool):BlendMode;

    /**
     * Generic Mask Stack data structure.
     * @param size Number of quads.
     * @param outBuffer Buffer for output, length has to be `6 * size`.
     * @return Resulting index buffer.
     */
    static public function createIndicesForQuads(size:Int, ?outBuffer:Array<Int>):Array<Int>;
    
    /**
     * Split a data URI into components.
     * Returns `undefined` if parameter dataUri is not a valid data URI.
     * @param dataUri The data URI to check.
     * @return The decomposed data uri or `undefined`.
     */
    static public function decomposeDataUri(dataUri:String):Null<DecomposedDataUri>;

    /**
     * Helper for warning developers about deprecated features & settings.
     * A stack track for warnings is given; useful for tracking-down where deprecated
     * methods/properties/classes are being used within the code.
     * @param version The version where the feature became deprecated.
     * @param message Message should include what is deprecated, where, and the new solution.
     * @param ignoreDepth The number of steps to ignore at the top of the error stack this is
     *                    mostly to ignore internal deprecation calls. Default: `3`
     */
    static public function deprecation(version:String, message:String, ?ignoreDepth:Int):Void;

    /**
     * Destroys all texture in the cache.
     */
    static public function destroyTextureCache():Void;

    /**
     * A polygon triangulation library.
     * @param vertices A flat array of vertex coordinates.
     * @param holes An array of hole indices.
     * @param dimensions The number of coordinates per vertex in the input array. Default: `2`
     * @return Triangulated polygon.
     * 
     * @see https://github.com/mapbox/earcut
     */
    static public function earcut(vertices:Array<Float>, ?holes:Array<Float>, ?dimensions:Int):Array<Float>;

    /**
     * Get the resolution / device pixel ratio of an asset by looking for the prefix
     * used by spritesheets and image urls.
     * @param url The image path.
     * @param defaultValue The defaultValue if no filename prefix is set. Default: `1`
     * @return Resolution / device pixel ratio of an asset.
     */
    static public function getResolutionOfUrl(url:String, ?defaultValue:Float):Float;

    /**
     * Converts a hexadecimal color number to an [R, G, B] array of normalized
     * floats (numbers from 0.0 to 1.0).  
     * Example:
     * ```
     * Utils.hex2rgb(0xffffff); // returns [1, 1, 1]
     * ```
     * @param hex The hexadecimal number to convert. (`0xFFFFFF`)
     * @param out If supplied, this array will be used rather than returning a new one.
     * @return An array representing the [R, G, B] of the color where all values are floats.
     */
    static public function hex2rgb(hex:Int, ?out:Array<Float>):Array<Float>;

    /**
     * Converts a color as an [R, G, B] array of normalized floats to a hexadecimal number.  
     * Example:
     * ```
     * Utils.rgb2hex([1, 1, 1]); // returns 0xffffff
     * ```
     * @param rgb Array of numbers where all values are normalized floats from 0.0 to 1.0.
     * @return Number in hexadecimal.
     */
    static public function rgb2hex(rgb:Array<Float>):Int;

    /**
     * Converts a hexadecimal color number to a string.  
     * Example:
     * ```
     * Utils.hex2string(0xffffff); // returns "#ffffff"
     * ```
     * @param hex Number in hex (e.g., 0xffffff).
     * @return The string color (e.g., "#ffffff").
     */
    static public function hex2string(hex:Int):String;

    /**
     * Converts a hexadecimal string to a hexadecimal color number.  
     * Example:
     * ```
     * Utils.string2hex("#ffffff"); // returns 0xffffff
     * ```
     * @param string The string color (e.g., `#ffffff`)
     * @return Number in hexadecimal.
     */
    static public function string2hex(string:String):Int;

    /**
     * Checks if a number is a power of two.
     * @param v Input value.
     * @return `true` if value is power of two.
     */
    static public function isPow2(v:Float):Bool;

    /**
     * Helper for checking for WebGL support.
     * @return Is WebGL supported.
     */
    static public function isWebGLSupported():Bool;

    /**
     * Computes ceil of log base 2.
     * @param v Input value.
     * @return Logarithm base 2.
     */
    static public function log2(v:Float):Float;

    /**
     * Rounds to next power of two.
     * @param v Input value.
     */
    static public function nextPow2(v:Float):Float;

    /**
     * Combines RGB and alpha to out array.
     * @param rgb Input RGB.
     * @param alpha Alpha param.
     * @param out Output.
     * @param premultiply Do premultiply it.
     * @return Vec4 RGBA.
     */
    static public function premultiplyRgba(rgb:Array<Float>, alpha:Float, ?out:Array<Float>, ?premultiply:Bool):Array<Float>;

    /**
     * Premultiplies tint.
     * @param tint Integer RGB.
     * @param alpha Floating point alpha (0.0-1.0).
     * @return Tint multiplied by alpha.
     */
    static public function premultiplyTint(tint:Int, alpha:Float):Int;

    /**
     * Converts integer tint and float alpha to vec4 form, premultiplies by default.
     * @param tint Input tint: RGB
     * @param alpha Alpha param: 0-1.
     * @param out Output.
     * @param premultiply Do premultiply it. Default: `true`
     * @return Vec4 RGBA.
     */
    static public function premultiplyTintToRgba(tint:Int, alpha:Float, ?out:Array<Float>, ?premultiply:Bool):Array<Float>;

    /**
     * Remove items from a javascript array without generating garbage.
     * @param arr Array to remove elements from.
     * @param startIdx Starting index.
     * @param removeCount How many to remove.
     */
    static public function removeItems(arr:Array<Dynamic>, startIdx:Int, removeCount:Int):Void;

    /**
     * Logs out the version and renderer information for this running instance of PIXI.
     * If you don't want to see this message you can run `Utils.skipHello()` before creating
     * your renderer. Keep in mind that doing that will forever make you a jerk face.
     * @param type The string renderer type to log.
     */
    static public function sayHello(type:String):Void;

    /**
     * Skips the hello message of renderers that are created after this is run.
     */
    static public function skipHello():Void;

    /**
     * Returns sign of number.
     * @param n The number to check the sign of.
     * @return 0 if `n` is 0, -1 if `n` is negative, 1 if `n` is positive.
     */
    static public function sign(n:Float):Float;

    /**
     * Trim transparent borders from a canvas.
     * @param canvas The canvas to trim.
     * @return Trim data.
     */
    static public function trimCanvas(canvas:CanvasElement):Dynamic;

    /**
     * Gets the next unique identifier.
     * @return The next unique identifier to use.
     */
    static public function uid():Int;
}

/**
 * The mobile device description.
 * @see https://github.com/kaimallea/isMobile
 * ***
 * Library: **core** 
 */
typedef MobileDevice =
{
    /**
     * `true` if current platform is tablet or phone device.
     */
    var any:Bool;

    /**
     * `true` if current platform large-screen tablet device.
     */
    var tablet:Bool;

    /**
     * `true` if current platform small-screen phone device.
     */
    var phone:Bool;

    /**
     * Description for Apple devices.
     */
    var apple:AppleDevice;

    /**
     * Description for Android devices.
     */
    var android:AndroidDevice;

    /**
     * Description for Amazon devices.
     */
    var amazon:AmazonDevice;

    /**
     * Description for Windows devices.
     */
    var windows:WindowsDevice;

    /**
     * Description for other devices.
     */
    var other:OtherDevice;
}

/**
 * The Android device description.
 * ***
 * Library: **core** 
 */
typedef AndroidDevice = 
{
    >DeviceParams,
}

/**
 * The Amazon device description.
 * ***
 * Library: **core** 
 */
typedef AmazonDevice = 
{
    >DeviceParams,
}

/**
 * The Windows device description.
 * ***
 * Library: **core** 
 */
typedef WindowsDevice = 
{
    >DeviceParams,
}

/**
 * Other device description.
 * ***
 * Library: **core** 
 */
typedef OtherDevice = 
{
    var blackberry:Bool;
    var blackberry10:Bool;
    var opera:Bool;
    var firefox:Bool;
    var chrome:Bool;
    var device:Bool;
}

/**
 * The Apple device description.
 * ***
 * Library: **core** 
 */
typedef AppleDevice = 
{
    >DeviceParams,

    /**
     * `true` if any iPod.
     */
    var ipod:Bool;

    var universal:Bool;
}

/**
 * The mobile device description.
 * ***
 * Library: **core** 
 */
typedef DeviceParams =
{
    /**
     * - `true` if any Apple device.
     * - `true` if any Android device.
     * - `true` if any Silk device.
     * - `true` if any Windows device.
     */
    var device:Bool;

    /**
     * `true` if any Apple iPad.
     * `true` if any Android tablet.
     * `true` if any Silk tablet.
     * `true` if any Windows tablet.
     */
    var tablet:Bool;

    /**
     * `true` if any Apple iPhone.
     * `true` if any Android phone.
     * `true` if any Silk phone.
     * `true` if any Windows phone.
     */
    var phone:Bool;
}

/**
 * @see Documentation: http://pixijs.download/release/docs/PIXI.utils.DecomposedDataUri.html
 * ***
 * Library: **core** 
 */
typedef DecomposedDataUri =
{
    var charset:String;
    
    /**
     * The actual data.
     */
    var data:String;

    /**
     * Data encoding, eg. `base64`
     */
    var encoding:String;

    /**
     * type, eg. `image`
     */
    var mediaType:String;

    /**
     * Sub type, eg. `png`
     */
    var subType:String;
}