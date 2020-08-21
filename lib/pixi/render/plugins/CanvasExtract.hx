package pixi.render.plugins;

import haxe.extern.EitherType;
import js.lib.Uint8ClampedArray;
import js.html.ImageElement;
import js.html.CanvasElement;
import pixi.display.DisplayObject;
import pixi.textures.RenderTexture;

/**
 * The extract manager provides functionality to export
 * content from the renderers.
 * 
 * An instance of this class is automatically created by
 * default, and can be found at `renderer.plugins.extract`.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.CanvasExtract.html
 * @see Source code: http://pixijs.download/release/docs/packages_canvas_canvas-extract_src_CanvasExtract.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.CanvasExtract")
extern class CanvasExtract
{
    /**
     * Create a new CanvasExtract instance.
     * @param renderer A reference to the current renderer.
     */
    public function new(renderer:CanvasRenderer);

    /**
     * Will return a a base64 encoded string of this target. It works by
     * calling `CanvasExtract.getCanvas` and then running toDataURL on that.
     * @param target A displayObject or renderTexture to convert. If left empty will use the main renderer.
     * @param format Image format, e.g. `image/jpeg` or `image/webp`.
     * @param quality JPEG or Webp compression from 0 to 1. Default is 0.92.
     * @return A base64 encoded string of the texture.
     */
    public function base64(target:EitherType<DisplayObject,RenderTexture>, ?format:String, ?quality:Float):String;

    /**
     * Creates a Canvas element, renders this target to it and then returns it.
     * @param target A displayObject or renderTexture to convert. If left empty will use the main renderer.
     * @return A Canvas element with the texture rendered on.
     */
    public function canvas(target:EitherType<DisplayObject,RenderTexture>):CanvasElement;

    /**
     * Destroys the extract.
     */
    public function destroy():Void;

    /**
     * Will return a HTML Image of the target.
     * @param target A displayObject or renderTexture to convert. If left empty will use the main renderer.
     * @param format Image format, e.g. `image/jpeg` or `image/webp`.
     * @param quality JPEG or Webp compression from 0 to 1. Default is 0.92.
     * @return HTML Image of the target.
     */
    public function image(target:EitherType<DisplayObject,RenderTexture>, ?format:String, ?quality:Float):ImageElement;

    /**
     * Will return a one-dimensional array containing the pixel data of the
     * entire texture in RGBA order, with integer values between 0 and 255. (Included)
     * @param target A displayObject or renderTexture to convert. If left empty will use the main renderer.
     * @return One-dimensional array containing the pixel data of the entire texture.
     */
    public function pixels(target:EitherType<DisplayObject,RenderTexture>):Uint8ClampedArray;
}