package pixi.text;

import js.html.CanvasElement;

/**
 * The TextMetrics object represents the measurement of a block of
 * text with a specified style.
 * 
 * Example:
 * ```
 * var style = new TextStyle({fontFamily:'Arial', fontSize:24, fill:0xff1010, align:'center'})
 * var textMetrics = TextMetrics.measureText('Your text', style)
 * ```
 * @see Documentation: http://pixijs.download/release/docs/PIXI.TextMetrics.html
 * @see Source code: http://pixijs.download/release/docs/packages_text_src_TextMetrics.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.TextMetrics")
extern class TextMetrics
{
    /**
     * Create a new TextMetrics instance.
     * @param text The text that was measured.
     * @param style The style that was measured.
     * @param width The measured width of the text.
     * @param height The measured height of the text.
     * @param lines An array of the lines of text broken by new lines and wrapping if specified in style.
     * @param lineWidths An array of the line widths for each line matched to `lines`.
     * @param lineHeight The measured line height for this style.
     * @param maxLineWidth The maximum line width for all measured lines.
     * @param fontProperties The font properties object from TextMetrics.measureFont.
     */
    public function new(    text:String,
                            style:TextStyle,
                            width:Float,
                            height:Float,
                            lines:Array<String>,
                            lineWidths:Array<Float>,
                            lineHeight:Float,
                            maxLineWidth:Float,
                            fontProperties:Dynamic
    );

    /**
     * Baseline multiplier for calculate font metrics.  
     * Default: `1.4`
     */
    static public var BASELINE_MULTIPLIER:Float;

    /**
     * Baseline symbol for calculate font metrics.  
     * Default: `M`
     */
    static public var BASELINE_SYMBOL:String;

    /**
     * String used for calculate font metrics.
     * These characters are all tall to help calculate the height required for text.  
     * Default: `|ÉqÅ`
     */
    static public var METRICS_STRING:String;
    
    /**
     * The font properties object from TextMetrics.measureFont.
     */
    public var fontProperties:IFontMetrics;

    /**
     * The measured width of the text.
     */
    public var width:Float;

    /**
     * The measured height of the text.
     */
    public var height:Float;

    /**
     * The measured line height for this style.
     */
    public var lineHeight:Float;

    /**
     * An array of lines of the text broken by new lines and wrapping is specified in style.
     */
    public var lines:Array<String>;

    /**
     * An array of the line widths for each line matched to `lines`.
     */
    public var lineWidths:Array<Float>;

    /**
     * The maximum line width for all measured lines.
     */
    public var maxLineWidth:Float;

    /**
     * The style that was measured.
     */
    public var style:TextStyle;

    /**
     * The text that was measured.
     */
    public var text:String;

    /**
     * Overridable helper method used internally by TextMetrics, exposed to
     * allow customizing the class's behavior.
     * 
     * It allows one to determine whether a pair of characters should be broken
     * by newlines For example certain characters in CJK langs or numbers.
     * It must return a boolean.
     * @param char The character.
     * @param nextChar The next character.
     * @param token The token/word the characters are from.
     * @param index The index in the token of the char.
     * @param breakWords The style attr break words.
     * @return Whether to break word or not.
     */
    static public function canBreakChars(   char:String,
                                            nextChar:String,
                                            token:String,
                                            index:Int,
                                            breakWords:Bool
    ):Bool;

    /**
     * Overridable helper method used internally by TextMetrics, exposed to
     * allow customizing the class's behavior.
     * 
     * It allows one to customise which words should break Examples are if
     * the token is CJK or numbers. It must return a boolean.
     * @param token The token.
     * @param breakWords The style attr break words.
     * @return Whether to break word or not.
     */
    static public function canBreakWords(token:String, breakWords:Bool):Bool;

    /**
     * Clear font metrics in metrics cache.
     * @param font Font name. If font name not set then clear cache for all fonts.
     */
    static public function clearMetrics(?font:String):Void;

    /**
     * Calculates the ascent, descent and fontSize of a given font-style.
     * @param font String representing the style of the font.
     * @return Font properties object.
     */
    static public function measureFont(font:String):IFontMetrics;

    /**
     * Measures the supplied string of text and returns a Rectangle.
     * @param text The text to measure.
     * @param style The text style to use for measuring.
     * @param wordWrap Optional override for if word-wrap should be applied to the text.
     * @param canvas Optional specification of the canvas to use for measuring.
     * @return Measured width and height of the text.
     */
    static public function measureText(text:String, style:TextStyle, ?wordWrap:Bool, ?canvas:CanvasElement):TextMetrics;

    /**
     * Overridable helper method used internally by TextMetrics, exposed
     * to allow customizing the class's behavior.
     * 
     * It is called when a token (usually a word) has to be split into separate
     * pieces in order to determine the point to break a word. It must return
     * an array of characters.
     * 
     * Example: (Type Script)
     * ```
     * // Correctly splits emojis, eg "🤪🤪" will result in two element array, each with one emoji.
     * TextMetrics.wordWrapSplit = (token) => [...token];
     * ```
     * @param token The token to split.
     * @return The characters of the token.
     */
    static public function wordWrapSplit(token:String):Array<String>; 
}

/**
 * A number, or a string containing a number.
 * @see http://pixijs.download/release/docs/PIXI.html#.IFontMetrics
 * ***
 * Library: **core** 
 */
typedef IFontMetrics =
{
    /**
     * Font ascent.
     */
    var ascent:Float;

    /**
     * Font descent.
     */
    var descent:Float;

    /**
     * Font size.
     */
    var fontSize:Float;
}