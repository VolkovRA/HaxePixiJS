package pixi.display;

import haxe.extern.EitherType;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import pixi.geom.Rectangle;
import pixi.text.TextStyle;
import pixi.render.Renderer;

/**
 * A Text Object will create a line or multiple lines of text.
 * 
 * The text is created using the [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API).
 * 
 * The primary advantage of this class over BitmapText is that
 * you have great control over the style of the next, which you
 * can change at runtime.
 * 
 * The primary disadvantages is that each piece of text has
 * it's own texture, which can use more memory. When text
 * changes, this texture has to be re-generated and re-uploaded
 * to the GPU, taking up time.
 * 
 * To split a line you can use '\n' in your text string, or, on
 * the `style` object, change its `wordWrap` property to true
 * and and give the `wordWrapWidth` property a value.
 * 
 * A Text can be created directly from a string and a style
 * object, which can be generated [here](https://pixijs.io/pixi-text-style/#).
 * 
 * Example:
 * ```
 * var text = new Text('This is a PixiJS text',{fontFamily : 'Arial', fontSize: 24, fill : 0xff1010, align : 'center'});
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
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Text.html
 * @see Source code: http://pixijs.download/release/docs/packages_text_src_Text.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Text")
extern class Text extends Sprite
{
    /**
     * Create a new Text instance.
     * @param text The string that you would like the text to display.
     * @param style The style parameters.
     * @param canva The canvas element for drawing text.
     */
    public function new(text:String, ?style:EitherType<Dynamic,TextStyle>, ?canvas:CanvasElement);

    /**
     * The resolution / device pixel ratio of the canvas. This is set to automatically
     * match the renderer resolution by default, but can be overridden by setting manually.
     * 
     * Default: `1`
     */
    private var _resolution:Float;

    /**
     * The canvas element that everything is drawn to.
     */
    public var canvas:CanvasElement;

    /**
     * The canvas 2d context that everything is drawn with.
     */
    public var context:CanvasRenderingContext2D;

    /**
     * The resolution / device pixel ratio of the canvas. This is set to automatically
     * match the renderer resolution by default, but can be overridden by setting manually.
     * 
     * Default: `1`
     */
    public var resolution:Float;

    /**
     * Set the style of the text. Set up an event listener to listen for changes on the
     * style object and mark the text as dirty.
     */
    public var style:TextStyle; // <-- Can be Dynamic. Typed for tooltips.

    /**
     * Set the copy for the text object. To split a line you can use '\n'.
     */
    public var text:String;

    /**
     * Calculates the bounds of the Text as a rectangle. The bounds calculation takes
     * the worldTransform into account.
     */
    override private function _calculateBounds():Void;

    /**
     * Renders the object using the WebGL renderer.
     * @param renderer The renderer.
     */
    override private function _render(renderer:Renderer):Void;

    /**
     * Destroys this text object. Note* Unlike a Sprite, a Text object will
     * automatically destroy its baseTexture and texture as the majority of
     * the time the texture will not be shared with any other Sprites.
     * @param options Options parameter. A boolean will act as if all options
     *                have been set to that value.
     */
    override public function destroy(?options:EitherType<Bool, TextDestroyOptions>):Void;

    /**
     * Gets the local bounds of the text object.
     * @param rect The output rectangle.
     * @return The bounds.
     */
    override public function getLocalBounds(?rect:Rectangle):Rectangle;

    /**
     * Renders text to its canvas, and updates its texture. By default this
     * is used internally to ensure the texture is correct before rendering,
     * but it can be used called externally, for example from this class to
     * 'pre-generate' the texture from a piece of text, and then shared
     * across multiple Sprites.
     * @param respectDirty Whether to abort updating the text if the Text
     *                     isn't dirty and the function is called.
     */
    public function updateText(respectDirty:Bool):Void;
}

/**
 * The options of `Text.destroy()` method.
 */
typedef TextDestroyOptions =
{
    /**
     * If set to true, all the children will have their destroy method
     * called as well. 'options' will be passed on to those calls.  
     * Default: `false`
     */
    @:optional var children:Bool;

    /**
     * Should it destroy the current texture of the sprite as well.  
     * Default: `true`
     */
    @:optional var texture:Bool;

    /**
     * Should it destroy the base texture of the sprite as well.  
     * Default: `true`
     */
    @:optional var baseTexture:Bool;
}