package pixi.display;

import haxe.Constraints.Function;
import haxe.extern.EitherType;
import pixi.textures.Texture;

/**
 * An AnimatedSprite is a simple way to display an animation
 * depicted by a list of textures.
 * 
 * Example:
 * ```
 * var alienImages = ["image_sequence_01.png","image_sequence_02.png","image_sequence_03.png","image_sequence_04.png"];
 * var textureArray = [];
 * 
 * for (var i=0; i < 4; i++)
 * {
 *     let texture = Texture.from(alienImages[i]);
 *     textureArray.push(texture);
 * };
 * 
 * var animatedSprite = new AnimatedSprite(textureArray);
 * ```
 * 
 * The more efficient and simpler way to create an animated sprite
 * is using a [Spritesheet](http://pixijs.download/release/docs/PIXI.Spritesheet.html)
 * containing the animation definitions:
 * ```
 * Loader.shared.add("assets/spritesheet.json").load(setup);
 * 
 * function setup() {
 *     var sheet = Loader.shared.resources["assets/spritesheet.json"].spritesheet;
 *     animatedSprite = new AnimatedSprite(sheet.animations["image_sequence"]);
 *     ...
 * }
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
 * @see Documentation: http://pixijs.download/release/docs/PIXI.AnimatedSprite.html
 * @see Source code: http://pixijs.download/release/docs/packages_sprite-animated_src_AnimatedSprite.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.AnimatedSprite")
extern class AnimatedSprite extends Sprite
{
    /**
     * Create a new AnimatedSprite instance.
     * @param textures An array of [Texture](http://pixijs.download/release/docs/PIXI.Texture.html) or frame objects that make up the animation.
     * @param autoUpdate Whether to use PIXI.Ticker.shared to auto update animation time. Default: `true`
     */
    public function new(textures:EitherType<Array<Texture>, Array<FrameObject>>, ?autoUpdate:Bool);

    /**
     * The speed that the AnimatedSprite will play at. Higher is faster, lower is slower.  
     * Default: `1`
     */
    public var animationSpeed:Float;

    /**
     * Whether to use PIXI.Ticker.shared to auto update animation time.
     */
    public var autoUpdate:Bool;

    /**
     * The AnimatedSprites current frame index.
     */
    public var currentFrame(default, null):Int;

    /**
     * Whether or not the animate sprite repeats after playing.  
     * Default: `true`
     */
    public var loop:Bool;

    /**
     * User-assigned function to call when an AnimatedSprite finishes
     * playing.
     * 
     * Example:
     * ```
     * animation.onComplete = function () {
     *     // finished!
     * };
     * ```
     */
    public var onComplete:Function;

    /**
     * User-assigned function to call when an AnimatedSprite changes which
     * texture is being rendered.
     * 
     * Example:
     * ```
     * animation.onFrameChange = function () {
     *     // updated!
     * };
     * ```
     */
    public var onFrameChange:Function;

    /**
     * User-assigned function to call when loop is true, and an AnimatedSprite
     * is played and loops around to start again.
     * 
     * Example:
     * ```
     * animation.onLoop = function () {
     *     // looped!
     * };
     * ```
     */
    public var onLoop:Function;

    /**
     * Indicates if the AnimatedSprite is currently playing.
     */
    public var playing(default, null):Bool;

    /**
     * The array of textures used for this AnimatedSprite.
     */
    public var textures:Array<Texture>;

    /**
     * The total number of frames in the AnimatedSprite. This is the same as
     * number of textures assigned to the AnimatedSprite.
     * 
     * Default: `0`
     */
    public var totalFrames:Int;

    /**
     * Update anchor to [Texture's defaultAnchor](http://pixijs.download/release/docs/PIXI.Texture.html#defaultAnchor)
     * when frame changes.
     * 
     * Useful with [sprite sheet animations](http://pixijs.download/release/docs/PIXI.Spritesheet.html#animations)
     * created with tools. Changing anchor for each frame allows to pin sprite
     * origin to certain moving feature of the frame (e.g. left foot).
     * 
     * Note: Enabling this will override any previously set `anchor` on each
     * frame change.
     * 
     * Default: `false`
     */
    public var updateAnchor:Bool;

    /**
     * A short hand way of creating an AnimatedSprite from an array of frame ids.
     * @param frames The array of frames ids the AnimatedSprite will use as its
     *               texture frames.
     * @return The new animated sprite with the specified frames.
     */
    static public function fromFrames(frames:Array<String>):AnimatedSprite;

    /**
     * A short hand way of creating an AnimatedSprite from an array of image ids.
     * @param images The array of image urls the AnimatedSprite will use as its
     *               texture frames.
     * @return The new animate sprite with the specified images as frames.
     */
    static public function fromImages(images:Array<String>):AnimatedSprite;

    /**
     * Stops the AnimatedSprite and destroys it.
     * @param options Options parameter. A boolean will act as if all options
     *                have been set to that value.
     */
    override public function destroy(?options:EitherType<Bool,AnimatedSpriteDestroyOptions>):Void;

    /**
     * Goes to a specific frame and begins playing the AnimatedSprite.
     * @param frameNumber Frame index to start at.
     */
    public function gotoAndPlay(frameNumber:Int):Void;

    /**
     * Stops the AnimatedSprite and goes to a specific frame.
     * @param frameNumber Frame index to stop at.
     */
    public function gotoAndStop(frameNumber:Int):Void;

    /**
     * Plays the AnimatedSprite.
     */
    public function play():Void;

    /**
     * Stops the AnimatedSprite.
     */
    public function stop():Void;

    /**
     * Updates the object transform for rendering.
     * @param deltaTime Time since last tick.
     */
    public function update(deltaTime:Float):Void;
}

/**
 * The frame data of AnimatedSprite.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.AnimatedSprite.html#.FrameObject
 * ***
 * Library: **core** 
 */
typedef FrameObject =
{
    /**
     * The Texture of the frame.
     */
    var texture:Texture;

    /**
     * The duration of the frame in ms.
     */
    var time:Float;
}

/**
 * The options of destroy method to AnimatedSprite.
 */
typedef AnimatedSpriteDestroyOptions =
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