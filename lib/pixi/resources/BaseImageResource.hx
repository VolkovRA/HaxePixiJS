package pixi.resources;

import haxe.extern.EitherType;
import js.html.CanvasElement;
import js.html.DOMElement;
import js.html.ImageElement;
import js.html.VideoElement;
import js.html.svg.Element;
import pixi.textures.BaseTexture;
import pixi.textures.GLTexture;
import pixi.render.Renderer;

/**
 * Base for all the image/canvas resources.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.resources.BaseImageResource.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_textures_resources_BaseImageResource.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.resources.BaseImageResource")
extern class BaseImageResource extends Resource
{
    /**
     * Create a new BaseImageResource instance.
     * @param source 
     */
    public function new(source:EitherType<ImageElement, EitherType<CanvasElement, EitherType<Element, VideoElement>>>);

    /**
     * The source element.  
     * Can be:
     * - js.html.ImageElement.
     * - js.html.CanvasElement
     * - js.html.svg.Element
     * - js.html.VideoElement.
     */
    public var source:DOMElement;

    /**
     * Set cross origin based detecting the url and the crossorigin.
     * @param element Element to apply crossOrigin.
     * @param url URL to check.
     * @param crossorigin Cross origin value to use. Default: `true`
     */
    static private function crossOrigin(element:js.html.Element, url:String, ?crossorigin:EitherType<Bool,String>):Void;

    /**
     * Clean up anything, this happens when destroying is ready.
     */
    private function dispose():Void;

    /**
     * Checks if source width/height was changed, resize can cause extra
     * baseTexture update. Triggers one update in any case.
     */
    override public function update():Void;

    /**
     * Upload the texture to the GPU.
     * @param renderer Upload to the renderer.
     * @param baseTexture Reference to parent texture.
     * @param glTexture GL Texture.
     * @param source (optional)
     * @return True is success.
     */
    public function upload(renderer:Renderer, baseTexture:BaseTexture, glTexture:GLTexture, ?source:EitherType<ImageElement, EitherType<CanvasElement, EitherType<Element, VideoElement>>>):Bool;
}