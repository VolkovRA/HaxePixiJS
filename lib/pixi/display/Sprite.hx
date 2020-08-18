package pixi.display;

import haxe.extern.EitherType;
import js.html.CanvasElement;
import js.html.VideoElement;
import pixi.display.Container;
import pixi.enums.BlendMode;
import pixi.geom.ObservablePoint;
import pixi.geom.Point;
import pixi.geom.Rectangle;
import pixi.textures.BaseTexture;
import pixi.textures.Texture;
import pixi.render.CanvasRenderer;
import pixi.render.Renderer;

/**
 * A Container represents a collection of display objects.
 * 
 * It is the base class of all display objects that act as a container for
 * other objects. (Like Sprites)
 * 
 * Example:
 * ```
 * var container = new Container();
 * container.addChild(sprite);
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
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Sprite.html
 * @see Source code: http://pixijs.download/release/docs/packages_sprite_src_Sprite.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Sprite")
extern class Sprite extends Container
{
    /**
     * Create a new Sprite instance.
     * @param texture The texture for this sprite.
     */
    public function new(?texture:Texture);

    /**
     * Cached tint value so we can tell when the tint is changed.
     * Value is used for 2d CanvasRenderer.  
     * Default: `0xFFFFFF`
     */
    private var _cachedTint:Int;

    /**
     * The width of the sprite. (This is initially set by the texture)
     */
    private var _width:Float;

    /**
     * The height of the sprite. (This is initially set by the texture)
     */
    private var _height:Float;

    /**
     * Cached tinted texture.
     */
    private var _tintedCanvas:CanvasElement;

    /**
     * The anchor sets the origin point of the sprite. The default value is taken
     * from the Texture and passed to the constructor.
     * 
     * The default is (0,0), this means the sprite's origin is the top left.
     * 
     * Setting the anchor to (0.5,0.5) means the sprite's origin is centered.
     * 
     * Setting the anchor to (1,1) would mean the sprite's origin point will be
     * the bottom right corner.
     * 
     * If you pass only single parameter, it will set both x and y to the same
     * value as shown in the example below.
     * 
     * Example:
     * ```
     * var sprite = new Sprite(texture);
     * sprite.anchor.set(0.5); // This will set the origin to center. (0.5) is same as (0.5, 0.5).
     * ```
     */
    public var anchor:ObservablePoint;

    /**
     * The blend mode to be applied to the sprite.
     * Apply a value of `BlendMode.NORMAL` to reset the blend mode.  
     * Default: `BlendMode.NORMAL`
     */
    public var blendMode:BlendMode;

    /**
     * Plugin that is responsible for rendering this element. Allows to customize the
     * rendering process without overriding '_render' & '_renderCanvas' methods.  
     * Default: `batch`
     */
    public var pluginName:String;

    /**
     * If true PixiJS will Math.floor() x/y values when rendering, stopping pixel
     * interpolation. Advantages can include sharper image quality (like text) and
     * faster rendering on canvas. The main disadvantage is movement of objects may
     * appear less smooth. To set the global default, change `Settings.ROUND_PIXELS`.  
     * Default: `false`
     */
    public var roundPixels:Bool;

    /**
     * The texture that the sprite is using.
     */
    public var texture:Texture;

    /**
     * The tint applied to the sprite.
     * This is a hex value. A value of 0xFFFFFF will remove any tint effect.  
     * Default: `0xFFFFFF`
     */
    public var tint:Int;

    /**
     * Helper function that creates a new sprite based on the source you provide.
     * The source can be - frame id, image url, video url, canvas element, video
     * element, base texture.
     * @param source Source to create texture from.
     * @param options See PIXI.BaseTexture's constructor for options.
     * @return The newly created sprite.
     */
    static public function from(source:EitherType<String,EitherType<Texture,EitherType<CanvasElement,VideoElement>>>, ?options:BaseTextureOptions):Sprite;

    /**
     * Updates the bounds of the sprite.
     */
    override private function _calculateBounds():Void;

    /**
     * When the texture is updated, this event will fire to update the scale and frame.
     */
    private function _onTextureUpdate():Void;

    /**
     * Renders the object using the WebGL renderer.
     * @param renderer The webgl renderer to use.
     */
    override private function _render(renderer:Renderer):Void;

    /**
     * Calculates worldTransform * vertices for a non texture with a trim. store
     * it in vertexTrimmedData This is used to ensure that the true width and
     * height of a trimmed texture is respected.
     */
    public function calculateTrimmedVertices():Void;

    /**
     * Calculates worldTransform * vertices, store it in vertexData.
     */
    public function calculateVertices():Void;

    /**
     * Tests if a point is inside this sprite.
     * @param point The point to test.
     * @return The result of the test.
     */
    public function containsPoint(point:IPointData):Bool;

    /**
     * Destroys this sprite and optionally its texture and children.
     * @param options Options parameter. A boolean will act as if all options have
     *                been set to that value.
     */
    override public function destroy(?options:EitherType<Bool,DestroyOptions>):Void;

    /**
     * Gets the local bounds of the sprite object.
     * @param rect The output rectangle.
     * @return The bounds.
     */
    override public function getLocalBounds(?rect:Rectangle):Rectangle;

    /**
     * Renders the object using the Canvas renderer.
     * @param renderer The renderer.
     */
    override public function renderCanvas(renderer:CanvasRenderer):Void;
}