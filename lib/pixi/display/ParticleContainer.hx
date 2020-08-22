package pixi.display;

import haxe.extern.EitherType;
import pixi.enums.BlendMode;
import pixi.textures.BaseTexture;

/**
 * The ParticleContainer class is a really fast version of the Container
 * built solely for speed, so use when you need a lot of sprites or
 * particles.
 * 
 * The tradeoff of the ParticleContainer is that most advanced
 * functionality will not work. ParticleContainer implements the basic
 * object transform (position, scale, rotation) and some advanced
 * functionality like tint (as of v4.5.6).
 * 
 * Other more advanced functionality like masking, children, filters,
 * etc will not work on sprites in this batch.
 * 
 * It's extremely easy to use:
 * ```
 * var container = new ParticleContainer();
 * for (let i = 0; i < 100; ++i)
 * {
 *     var sprite = Sprite.from("myImage.png");
 *     container.addChild(sprite);
 * }
 * ```
 * And here you have a hundred sprites that will be rendered at the
 * speed of light.
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
 * @see Documentation: http://pixijs.download/release/docs/PIXI.ParticleContainer.html
 * @see Source code: http://pixijs.download/release/docs/packages_particles_src_ParticleContainer.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.ParticleContainer")
extern class ParticleContainer extends Container
{
    /**
     * Create a new ParticleContainer instance.
     * @param maxSize The maximum number of particles that can be rendered
     *                by the container. Affects size of allocated buffers.
     *                Default: `1500`
     * @param properties The properties of children that should be uploaded
     *                   to the gpu and applied.
     * @param batchSize Number of particles per batch. If less than maxSize,
     *                  it uses maxSize instead. Default: `16384`
     * @param autoResize If true, container allocates more batches in case
     *                   there are more than `maxSize` particles.
     *                   Default: `false`
     */
    public function new(?maxSize:Int, ?properties:ParticleContainerOptions, ?batchSize:Int, ?autoResize:Bool);

    /**
     * If true, container allocates more batches in case there are more than
     * `maxSize` particles.  
     * Default: `false`
     */
    public var autoResize:Bool;

    /**
     * The texture used to render the children.
     */
    public var baseTexture(default, null):BaseTexture;

    /**
     * The blend mode to be applied to the sprite. Apply a value of
     * `BlendMode.NORMAL` to reset the blend mode.  
     * Default: `BlendMode.NORMAL`
     */
    public var blendMode:BlendMode;

    /**
     * If true PixiJS will Math.floor() x/y values when rendering, stopping
     * pixel interpolation. Advantages can include sharper image quality
     * (like text) and faster rendering on canvas. The main disadvantage is
     * movement of objects may appear less smooth. Default to true here as
     * performance is usually the priority for particles.  
     * Default: `true`
     */
    public var roundPixels:Bool;

    /**
     * The tint applied to the container. This is a hex value. A value of
     * 0xFFFFFF will remove any tint effect.
     * - IMPORTANT: This is a WebGL only feature and will be ignored by the canvas renderer.
     * 
     * Default: `0xFFFFFF`
     */
    public var tint:Int;

    /**
     * Destroys the container.
     * @param options Options parameter. A boolean will act as if all options have
     *                been set to that value.
     */
    override public function destroy(?options:EitherType<Bool, ParticleContainerDestroyOptions>):Void;

    /**
     * Sets the private properties array to dynamic / static based on the
     * passed properties object.
     * @param properties The properties to be uploaded.
     */
    public function setProperties(properties:Dynamic):Void;
}

/**
 * The options object of ParticleContainer.
 */
typedef ParticleContainerOptions =
{
    /**
     * When true, vertices be uploaded and applied. if sprite's
     * `scale/anchor/trim/frame/orig` is dynamic, please set `true`.
     * 
     * Default: `false`
     */
    @:optional var vertices:Bool;

    /**
     * When true, position be uploaded and applied.  
     * Default: `true`
     */
    @:optional var position:Bool;

    /**
     * When true, rotation be uploaded and applied.  
     * Default: `false`
     */
    @:optional var rotation:Bool;

    /**
     * When true, uvs be uploaded and applied.  
     * Default: `false`
     */
    @:optional var uvs:Bool;

    /**
     * When true, alpha and tint be uploaded and applied.  
     * Default: `false`
     */
    @:optional var tint:Bool;
}

/**
 * The options of `ParticleContainer.destroy()` method.
 */
typedef ParticleContainerDestroyOptions =
{
    /**
     * If set to true, all the children will have their destroy method called
     * as well. 'options' will be passed on to those calls.  
     * Default: `false`
     */
    @:optional var children:Bool;

    /**
     * Only used for child Sprites if options.children is set to true Should it
     * destroy the texture of the child sprite.  
     * Default: `false`
     */
    @:optional var texture:Bool;

    /**
     * Only used for child Sprites if options.children is set to true Should it
     * destroy the base texture of the child sprite.  
     * Default: `false`
     */
    @:optional var baseTexture:Bool;
}