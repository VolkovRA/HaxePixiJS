package pixi;

import haxe.extern.EitherType;
import js.html.CanvasElement;
import js.html.ImageBitmap;
import js.html.ImageElement;
import js.html.VideoElement;

/**
 * Types that can be passed to drawImage.
 * @see https://pixijs.download/dev/docs/PIXI.html#.ICanvasImageSource
 * ***
 * Library: **core** 
 */
typedef ICanvasImageSource = EitherType<ImageElement, EitherType<CanvasElement, EitherType<VideoElement, ImageBitmap>>>;