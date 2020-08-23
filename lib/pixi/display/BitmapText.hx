package pixi.display;

import pixi.enums.TextAlign;
import pixi.geom.ObservablePoint;
import pixi.geom.Rectangle;

/**
 * A BitmapText object will create a line or multiple lines of text
 * using bitmap font.
 * 
 * The primary advantage of this class over Text is that all of your
 * textures are pre-generated and loading, meaning that rendering is
 * fast, and changing text has no performance implications.
 * 
 * Supporting character sets other than latin, such as CJK languages,
 * may be impractical due to the number of characters.
 * 
 * To split a line you can use '\n', '\r' or '\r\n' in your string.
 * 
 * PixiJS can auto-generate fonts on-the-fly using BitmapFont or use
 * fnt files provided by: http://www.angelcode.com/products/bmfont/
 * for Windows or http://www.bmglyph.com/ for Mac.
 * 
 * A BitmapText can only be created when the font is loaded.
 * 
 * Example:
 * ```
 * // in this case the font is in a file called 'desyrel.fnt'
 * var bitmapText = new BitmapText("text using a fancy font!", {font: "35px Desyrel", align: "right"});
 * ```
 * 
 * @event `PixiEvent.ADDED` Fired when this DisplayObject is added to a Container. 
 * @event `PixiEvent.REMOVED` Fired when this DisplayObject is removed from a Container.
 * @event `InteractionEvent.CLICK` Fired when a pointer device button (usually a mouse left-button) is pressed and released on the display object.  
 * @event `InteractionEvent.MOUSE_DOWN` Fired when a pointer device button (usually a mouse left-button) is pressed on the display.
 * @event `InteractionEvent.MOUSE_MOVE` Fired when a pointer device (usually a mouse) is moved while over the display object.
 * @event `InteractionEvent.MOUSE_OUT` Fired when a pointer device (usually a mouse) is moved off the display object.
 * @event `InteractionEvent.MOUSE_OVER` Fired when a pointer device (usually a mouse) is moved onto the display object.
 * @event `InteractionEvent.MOUSE_UP` Fired when a pointer device button (usually a mouse left-button) is released over the display object.
 * @event `InteractionEvent.MOUSE_UP_OUTSIDE` Fired when a pointer device button (usually a mouse left-button) is released outside the display object that initially registered a **mousedown**.
 * @event `InteractionEvent.POINTER_CANCEL` Fired when the operating system cancels a pointer event.
 * @event `InteractionEvent.POINTER_DOWN` Fired when a pointer device button is pressed on the display object.
 * @event `InteractionEvent.POINTER_MOVE` Fired when a pointer device is moved while over the display object.
 * @event `InteractionEvent.POINTER_OUT` Fired when a pointer device is moved off the display object.
 * @event `InteractionEvent.POINTER_OVER` Fired when a pointer device is moved onto the display object.
 * @event `InteractionEvent.POINTER_TAP` Fired when a pointer device button is pressed and released on the display object.
 * @event `InteractionEvent.POINTER_UP` Fired when a pointer device button is released over the display object.
 * @event `InteractionEvent.POINTER_UP_OUTSIDE` Fired when a pointer device button is released outside the display object that initially registered a **pointerdown**.
 * @event `InteractionEvent.RIGHT_CLICK` Fired when a pointer device secondary button (usually a mouse right-button) is pressed and released on the display object.
 * @event `InteractionEvent.RIGHT_DOWN` Fired when a pointer device secondary button (usually a mouse right-button) is pressed on the display object.
 * @event `InteractionEvent.RIGHT_UP` Fired when a pointer device secondary button (usually a mouse right-button) is released over the display object.
 * @event `InteractionEvent.RIGHT_UP_OUTSIDE` Fired when a pointer device secondary button (usually a mouse right-button) is released outside the display object that initially registered a **rightdown**.
 * @event `InteractionEvent.TAP` Fired when a touch point is placed and removed from the display object.
 * @event `InteractionEvent.TOUCH_CANCEL` Fired when the operating system cancels a touch.
 * @event `InteractionEvent.TOUCH_END` Fired when a touch point is removed from the display object.
 * @event `InteractionEvent.TOUCH_END_OUTSIDE` Fired when a touch point is removed outside of the display object that initially registered a **touchstart**.
 * @event `InteractionEvent.TOUCH_MOVE` Fired when a touch point is moved along the display object.
 * @event `InteractionEvent.TOUCH_START` Fired when a touch point is placed on the display object.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.BitmapText.html
 * @see Source code: http://pixijs.download/release/docs/packages_text-bitmap_src_BitmapText.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.BitmapText")
extern class BitmapText extends Container
{
    /**
     * Create a new BitmapText instance.
     * @param text A string that you would like the text to display.
     * @param style The style parameters.
     */
    public function new(text:String, style:BitmapTextOptions);

    /**
     * The alignment of the BitmapText object.  
     * Default: `TextAlign.LEFT`
     */
    public var align:TextAlign;
    
    /**
     * The anchor sets the origin point of the text.
     * 
     * The default is (0,0), this means the text's origin is the top left.
     * 
     * Setting the anchor to (0.5,0.5) means the text's origin is centered.
     * 
     * Setting the anchor to (1,1) would mean the text's origin point will be
     * the bottom right corner.
     */
    public var anchor:ObservablePoint;

    /**
     * Set to `true` if the BitmapText needs to be redrawn.
     */
    public var dirty:Bool;

    /**
     * The name of the BitmapFont.
     */
    public var fontName:String;

    /**
     * The size of the font to display.
     */
    public var fontSize:Float;

    /**
     * Additional space between characters.
     */
    public var letterSpacing:Float;

    /**
     * The max line height. This is useful when trying to use the total
     * height of the Text, i.e. when trying to vertically align.
     */
    public var maxLineHeight(default, null):Float;

    /**
     * The max width of this bitmap text in pixels. If the text provided
     * is longer than the value provided, line breaks will be automatically
     * inserted in the last whitespace. Disable by setting the value to `0`.
     */
    public var maxWidth:Float;

    /**
     * If true PixiJS will Math.floor() x/y values when rendering, stopping
     * pixel interpolation. Advantages can include sharper image quality
     * (like text) and faster rendering on canvas. The main disadvantage is
     * movement of objects may appear less smooth. To set the global default,
     * change [Settings.ROUND_PIXELS](http://pixijs.download/release/docs/PIXI.settings.html#.ROUND_PIXELS)
     * 
     * Default: `Settings.ROUND_PIXELS`
     */
    public var roundPixels:Bool;

    /**
     * The text of the BitmapText object.
     */
    public var text:String;

    /**
     * The height of the overall text, different from fontSize, which is
     * defined in the style object.
     */
    public var textHeight(default, null):Float;

    /**
     * The width of the overall text, different from fontSize, which is
     * defined in the style object.
     */
    public var textWidth(default, null):Float;

    /**
     * The tint of the BitmapText object.  
     * Default: `0xFFFFFF`
     */
    public var tint:Int;

    /**
     * Validates text before calling parent's getLocalBounds.
     * @return The rectangular bounding area.
     */
    override public function getLocalBounds():Rectangle;

    /**
     * Renders text and updates it when needed. This should only be called
     * if the BitmapFont is regenerated.
     */
    public function updateText():Void;
}

/**
 * The options object of BitmapText.
 */
typedef BitmapTextOptions =
{
    /**
     * The installed BitmapFont name.
     */
    var fontName:String;

    /**
     * The size of the font in pixels, e.g. 24. If undefined, this
     * will default to the BitmapFont size.
     */
    @:optional var fontSize:Float;

    /**
     * Alignment for multiline text (`left`, `center` or `right`), does
     * not affect single line text.  
     * Default: `TextAlign.LEFT`
     */
    @:optional var align:TextAlign;

    /**
     * The tint color.  
     * Default: `0xFFFFFF`
     */
    @:optional var tint:Int;

    /**
     * The amount of spacing between letters.  
     * Default: `0`
     */
    @:optional var letterSpacing:Float;
    
    /**
     * The max width of the text before line wrapping.  
     * Default: `0` 
     */
    @:optional var maxWidth:Float;
}