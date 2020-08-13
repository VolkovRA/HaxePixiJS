package pixi.utils;

import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;

/**
 * Creates a Canvas element of the given size to be used as a target for rendering to.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.utils.CanvasRenderTarget.html
 * @see Source code: http://pixijs.download/release/docs/packages_utils_src_media_CanvasRenderTarget.js.html
 */
@:native("PIXI.utils.CanvasRenderTarget")
extern class CanvasRenderTarget
{
    /**
     * Create a new CanvasRenderTarget instance.
     * @param width The width for the newly created canvas.
     * @param height The height for the newly created canvas.
     * @param resolution The resolution / device pixel ratio of the canvas. Default: `1`
     */
    public function new(width:Int, height:Int, ?resolution:Float);

    /**
     * The Canvas object that belongs to this CanvasRenderTarget.
     */
    public var canvas:CanvasElement;

    /**
     * A CanvasRenderingContext2D object representing a two-dimensional rendering context.
     */
    public var context:CanvasRenderingContext2D;

    /**
     * The width of the canvas buffer in pixels.
     */
    public var width:Int;

    /**
     * The height of the canvas buffer in pixels.
     */
    public var height:Int;

    /**
     * Destroys this canvas.
     */
    public function destroy():Void;

    /**
     * Resizes the canvas to the specified width and height.
     * @param width The new width of the canvas.
     * @param height The new height of the canvas.
     */
    public function resize(width:Int, height:Int):Void;
}