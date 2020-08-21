package pixi.text;

/**
 * Normalized parsed data from .fnt files.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.BitmapFontData.html
 * @see Source code: http://pixijs.download/release/docs/packages_text-bitmap_src_BitmapFontData.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.BitmapFontData")
extern class BitmapFontData
{
    /**
     * Create a new BitmapFontData instance.
     */
    public function new();

    public var char(default, null):IBitmapFontDataChar;

    public var common(default, null):IBitmapFontDataCommon;

    public var info(default, null):IBitmapFontDataInfo;

    public var kerning(default, null):IBitmapFontDataKerning;

    public var page(default, null):IBitmapFontDataPage;
}

/**
 * The IBitmapFontDataChar.
 * @see http://pixijs.download/release/docs/PIXI.html#.IBitmapFontDataChar
 * ***
 * Library: **core** 
 */
typedef IBitmapFontDataChar =
{
    var id:String;
    var page:Float;
    var x:Float;
    var y:Float;
    var width:Float;
    var height:Float;
    var xoffset:Float;
    var yoffset:Float;
    var xadvance:Float;
}

/**
 * @see http://pixijs.download/release/docs/PIXI.html#.IBitmapFontDataCommon
 * ***
 * Library: **core** 
 */
typedef IBitmapFontDataCommon =
{
    var lineHeight:Float;
}

/**
 * @see http://pixijs.download/release/docs/PIXI.html#.IBitmapFontDataInfo
 * ***
 * Library: **core** 
 */
typedef IBitmapFontDataInfo =
{
    var face:String;
    var size:Float;
}

/**
 * @see http://pixijs.download/release/docs/PIXI.html#.IBitmapFontDataKerning
 * ***
 * Library: **core** 
 */
typedef IBitmapFontDataKerning =
{
    var first:Float;
    var second:Float;
    var amount:Float;
}

/**
 * @see http://pixijs.download/release/docs/PIXI.html#.IBitmapFontDataPage
 * ***
 * Library: **core** 
 */
typedef IBitmapFontDataPage =
{
    var id:Float;
    var file:String;
}