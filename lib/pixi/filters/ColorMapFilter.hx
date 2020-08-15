package pixi.filters;

import haxe.extern.EitherType;
import js.html.ImageElement;
import js.html.CanvasElement;
import pixi.textures.BaseTexture;
import pixi.textures.Texture;

/**
 * The ColorMapFilter applies a color-map effect to an object.
 * @see Documentation: https://pixijs.io/pixi-filters/docs/PIXI.filters.ColorMapFilter.html
 * @see Source code: https://pixijs.io/pixi-filters/docs/filters_color-map_src_ColorMapFilter.js.html
 * ***
 * Library: **filters** 
 */
@:native("PIXI.filters.ColorMapFilter")
extern class ColorMapFilter extends Filter
{
    /**
     * Create a new ColorMapFilter instance.
     * @param colorMap The colorMap texture of the filter.
     * @param nearest Whether use NEAREST for colorMap texture.  
     *                Default: `false`
     * @param mix The mix from 0 to 1, where 0 is the original image and 1 is the color mapped image.  
     *            Default: `1`
     */
    public function new(?colorMap:EitherType<Texture,EitherType<BaseTexture,EitherType<ImageElement,CanvasElement>>>, ?nearest:Bool, ?mix:Float);

    /**
     * The colorMap texture.
     */
    public var colorMap:Texture;

    /**
     * the size of one color slice.
     */
    public var colorSize(default, null):Float;

    /**
     * The mix from 0 to 1, where 0 is the original image and 1 is the color mapped image.
     */
    public var mix:Float;

    /**
     * Whether use NEAREST for colorMap texture.
     */
    public var nearest:Bool;

    /**
     * Destroys this filter.
     * @param destroyBase Whether to destroy the base texture of colorMap as well.  
     *                    Default: `false`
     */
    public function destroy(?destroyBase:Bool):Void;

    /**
     * If the colorMap is based on canvas , and the content of canvas has changed,
     * then call `updateColorMap` for update texture.
     */
    public function updateColorMap():Void;
}