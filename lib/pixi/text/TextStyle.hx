package pixi.text;

import haxe.extern.EitherType;
import js.html.CanvasGradient;
import js.html.CanvasPattern;
import pixi.enums.BaseLine;
import pixi.enums.FontStyle;
import pixi.enums.FontWeight;
import pixi.enums.LineJoin;
import pixi.enums.TextAlign;
import pixi.enums.TextGradient;
import pixi.enums.WhiteSpace;

/**
 * A TextStyle Object contains information to decorate a Text objects.
 * 
 * An instance can be shared between multiple Text objects; then changing
 * the style will update all text objects using it.
 * 
 * A tool can be used to generate a text style [here](https://pixijs.io/pixi-text-style/#).
 * @see Documentation: http://pixijs.download/release/docs/PIXI.TextStyle.html
 * @see Source code: http://pixijs.download/release/docs/packages_text_src_TextStyle.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.TextStyle")
extern class TextStyle
{
    /**
     * Create a new TextStyle instance.
     * @param style The style parameters.
     */
    public function new(?style:TextStyleOptions);

    /**
     * Alignment for multiline text (`left`, `center` or `right`),
     * does not affect single line text.  
     * Default: `TextAlign.LEFT`
     */
    public var align:TextAlign;

    /**
     * Indicates if lines can be wrapped within words,
     * it needs wordWrap to be set to `true`.
     * 
     * Default: `false`
     */
    public var breakWords:Bool;

    /**
     * Set a drop shadow for the text.  
     * Default: `false`
     */
    public var dropShadow:Bool;

    /**
     * Set alpha for the drop shadow.  
     * Default: `1`
     */
    public var dropShadowAlpha:Float;

    /**
     * Set a angle of the drop shadow.  
     * Default: `Math.PI/6`
     */
    public var dropShadowAngle:Float;

    /**
     * Set a shadow blur radius.  
     * Default: `0`
     */
    public var dropShadowBlur:Float;

    /**
     * A fill style to be used on the dropshadow e.g `red`, `#00FF00`.
     * 
     * Default: `black`
     */
    public var dropShadowColor:EitherType<String,Int>;

    /**
     * Set a distance of the drop shadow.  
     * Default: `5`
     */
    public var dropShadowDistance:Float;

    /**
     * A canvas fillstyle that will be used on the text e.g `red`,
     * `#00FF00`. Can be an array to create a gradient eg
     * `['#000000', '#FFFFFF']` [MDN](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/fillStyle).
     * 
     * Valid types:
     * - String. Example: `#00FF00`.
     * - Int. Example: `0x00FF00`.
     * - Array String.
     * - Array Int.
     * - js.html.CanvasGradient.
     * - js.html.CanvasPattern.
     * 
     * Default: `black`
     */
    public var fill:EitherType<String, EitherType<Int, EitherType<Array<String>, EitherType<Array<Int>, EitherType<CanvasGradient, CanvasPattern>>>>>;

    /**
     * If fill is an array of colours to create a gradient, this
     * can change the type/direction of the gradient.  
     * See [Pixi.TEXT_GRADIENT](http://pixijs.download/release/docs/PIXI.html#.TEXT_GRADIENT).
     * 
     * Default: `TextGradient.LINEAR_VERTICAL`
     */
    public var fillGradientType:TextGradient;

    /**
     * If fill is an array of colours to create a gradient, this
     * array can set the stop points (numbers between `0` and `1`)
     * for the color, overriding the default behaviour of evenly
     * spacing them.  
     */
    public var fillGradientStops:Array<Float>;

    /**
     * The font family.  
     * Default: `Arial`
     */
    public var fontFamily:EitherType<String, Array<String>>;

    /**
     * The font size.
     * As a number it converts to px, but as a string, equivalents
     * are: `26px`, `20pt`, `160%` or `1.6em`.
     * 
     * Default: `26`
     */
    public var fontSize:EitherType<Float, String>;

    /**
     * The font style.  
     * Default: `FontStyle.NORMAL`
     */
    public var fontStyle:FontStyle;

    /**
     * The font variant (`normal` or `small-caps`).
     * 
     * Default: `normal`
     */
    public var fontVariant:String;

    /**
     * The font weight (`normal`, `bold`, `bolder`, `lighter` and `100`,
     * `200`, `300`, `400`, `500`, `600`, `700`, `800` or `900`).
     * 
     * Default: `FontWeight.NORMAL`
     */
    public var fontWeight:FontWeight;

    /**
     * The space between lines.  
     * Default: `0`
     */
    public var leading:Float;

    /**
     * The amount of spacing between letters.  
     * Default: `0`
     */
    public var letterSpacing:Float;

    /**
     * The line height, a number that represents the vertical space that a
     * letter uses.
     */
    public var lineHeight:Float;

    /**
     * The lineJoin property sets the type of corner created, it can resolve
     * spiked text issues. Possible values `miter` (creates a sharp corner),
     * `round` (creates a round corner) or `bevel` (creates a squared corner).  
     * Default: `LineJoin.MITER`
     */
    public var lineJoin:LineJoin;

    /**
     * The miter limit to use when using the 'miter' lineJoin mode. This can
     * reduce or increase the spikiness of rendered text.  
     * Default: `10`
     */
    public var miterLimit:Float;

    /**
     * Occasionally some fonts are cropped. Adding some padding will prevent
     * this from happening by adding padding to all sides of the text.  
     * Default: `0`
     */
    public var padding:Float;

    /**
     * A canvas fillstyle that will be used on the text stroke e.g `blue`, `#FCFF00`  
     * Default: `black`
     */
    public var stroke:EitherType<Int,String>;

    /**
     * A number that represents the thickness of the stroke.  
     * Default: `0` (No stroke)  
     */
    public var strokeThickness:Float;

    /**
     * Trim transparent borders.  
     * Default: `false`
     */
    public var trim:Bool;

    /**
     * The baseline of the text that is rendered.  
     * Default: `BaseLine.ALPHABETIC`
     */
    public var textBaseline:BaseLine;

    /**
     * Determines whether newlines & spaces are collapsed or preserved `normal`
     * (collapse, collapse), `pre` (preserve, preserve) | `pre-line` (preserve, collapse).
     * It needs wordWrap to be set to `true`.
     * 
     * Default: `WhiteSpace.PRE`
     */
    public var whiteSpace:WhiteSpace;

    /**
     * Indicates if word wrap should be used.  
     * Default: `false`
     */
    public var wordWrap:Bool;

    /**
     * The width at which text will wrap, it needs wordWrap to be set to `true`.
     * 
     * Default: `100`
     */
    public var wordWrapWidth:Float;

    /**
     * Creates a new TextStyle object with the same values as this one.
     * Note that the only the properties of the object are cloned.
     * @return New cloned TextStyle object.
     */
    public function clone():TextStyle;

    /**
     * Resets all properties to the defaults specified in `TextStyle.prototype._default`.
     */
    public function reset():Void;

    /**
     * Generates a font style string to use for `TextMetrics.measureFont()`.
     * @return Font style string, for passing to `TextMetrics.measureFont()`.
     */
    public function toFontString():String;
}

/**
 * The options of TextStyle.
 */
typedef TextStyleOptions =
{
    /**
     * Alignment for multiline text (`left`, `center` or `right`),
     * does not affect single line text.  
     * Default: `TextAlign.LEFT`
     */
    @:optional var align:TextAlign;

    /**
     * Indicates if lines can be wrapped within words,
     * it needs wordWrap to be set to `true`.
     * 
     * Default: `false`
     */
    @:optional var breakWords:Bool;

    /**
     * Set a drop shadow for the text.  
     * Default: `false`
     */
    @:optional var dropShadow:Bool;

    /**
     * Set alpha for the drop shadow.  
     * Default: `1`
     */
    @:optional var dropShadowAlpha:Float;

    /**
     * Set a angle of the drop shadow.  
     * Default: `Math.PI/6`
     */
    @:optional var dropShadowAngle:Float;

    /**
     * Set a shadow blur radius.  
     * Default: `0`
     */
    @:optional var dropShadowBlur:Float;

    /**
     * A fill style to be used on the dropshadow e.g `red`, `#00FF00`.
     * 
     * Default: `black`
     */
    @:optional var dropShadowColor:EitherType<String,Int>;

    /**
     * Set a distance of the drop shadow.  
     * Default: `5`
     */
    @:optional var dropShadowDistance:Float;
    
    /**
     * A canvas fillstyle that will be used on the text e.g `red`,
     * `#00FF00`. Can be an array to create a gradient eg
     * `['#000000', '#FFFFFF']` [MDN](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/fillStyle).
     * 
     * Valid types:
     * - String. Example: `#00FF00`.
     * - Int. Example: `0x00FF00`.
     * - Array String.
     * - Array Int.
     * - js.html.CanvasGradient.
     * - js.html.CanvasPattern.
     * 
     * Default: `black`
     */
    @:optional var fill:EitherType<String, EitherType<Int, EitherType<Array<String>, EitherType<Array<Int>, EitherType<CanvasGradient, CanvasPattern>>>>>;

    /**
     * If fill is an array of colours to create a gradient, this
     * can change the type/direction of the gradient.  
     * See [Pixi.TEXT_GRADIENT](http://pixijs.download/release/docs/PIXI.html#.TEXT_GRADIENT).
     * 
     * Default: `TextGradient.LINEAR_VERTICAL`
     */
    @:optional var fillGradientType:TextGradient;

    /**
     * If fill is an array of colours to create a gradient, this
     * array can set the stop points (numbers between `0` and `1`)
     * for the color, overriding the default behaviour of evenly
     * spacing them.  
     */
    @:optional var fillGradientStops:Array<Float>;

    /**
     * The font family.  
     * Default: `Arial`
     */
    @:optional var fontFamily:EitherType<String, Array<String>>;

    /**
     * The font size.
     * As a number it converts to px, but as a string, equivalents
     * are: `26px`, `20pt`, `160%` or `1.6em`.
     * 
     * Default: `26`
     */
    @:optional var fontSize:EitherType<Float, String>;

    /**
     * The font style.  
     * Default: `FontStyle.NORMAL`
     */
    @:optional var fontStyle:FontStyle;

    /**
     * The font variant (`normal` or `small-caps`).
     * 
     * Default: `normal`
     */
    @:optional var fontVariant:String;

    /**
     * The font weight (`normal`, `bold`, `bolder`, `lighter` and `100`,
     * `200`, `300`, `400`, `500`, `600`, `700`, `800` or `900`).
     * 
     * Default: `FontWeight.NORMAL`
     */
    @:optional var fontWeight:FontWeight;

    /**
     * The space between lines.  
     * Default: `0`
     */
    @:optional var leading:Float;

    /**
     * The amount of spacing between letters.  
     * Default: `0`
     */
    @:optional var letterSpacing:Float;

    /**
     * The line height, a number that represents the vertical space that a
     * letter uses.
     */
    @:optional var lineHeight:Float;

    /**
     * The lineJoin property sets the type of corner created, it can resolve
     * spiked text issues. Possible values `miter` (creates a sharp corner),
     * `round` (creates a round corner) or `bevel` (creates a squared corner).  
     * Default: `LineJoin.MITER`
     */
    @:optional var lineJoin:LineJoin;

    /**
     * The miter limit to use when using the 'miter' lineJoin mode. This can
     * reduce or increase the spikiness of rendered text.  
     * Default: `10`
     */
    @:optional var miterLimit:Float;

    /**
     * Occasionally some fonts are cropped. Adding some padding will prevent
     * this from happening by adding padding to all sides of the text.  
     * Default: `0`
     */
    @:optional var padding:Float;

    /**
     * A canvas fillstyle that will be used on the text stroke e.g `blue`, `#FCFF00`  
     * Default: `black`
     */
    @:optional var stroke:EitherType<Int,String>;

    /**
     * A number that represents the thickness of the stroke.  
     * Default: `0` (No stroke)  
     */
    @:optional var strokeThickness:Float;
    
    /**
     * Trim transparent borders.  
     * Default: `false`
     */
    @:optional var trim:Bool;

    /**
     * The baseline of the text that is rendered.  
     * Default: `BaseLine.ALPHABETIC`
     */
    @:optional var textBaseline:BaseLine;

    /**
     * Determines whether newlines & spaces are collapsed or preserved `normal`
     * (collapse, collapse), `pre` (preserve, preserve) | `pre-line` (preserve, collapse).
     * It needs wordWrap to be set to `true`.
     * 
     * Default: `WhiteSpace.PRE`
     */
    @:optional var whiteSpace:WhiteSpace;

    /**
     * Indicates if word wrap should be used.  
     * Default: `false`
     */
    @:optional var wordWrap:Bool;

    /**
     * The width at which text will wrap, it needs wordWrap to be set to `true`.
     * 
     * Default: `100`
     */
    @:optional var wordWrapWidth:Float;
}