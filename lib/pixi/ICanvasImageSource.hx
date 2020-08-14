package pixi;

import haxe.extern.EitherType;
import js.html.VideoElement;
import js.html.ImageElement;
import js.html.CanvasElement;
import js.html.ImageBitmap;

/**
 * Types that can be passed to drawImage.
 * 
 * @see https://pixijs.download/dev/docs/PIXI.html#.ICanvasImageSource
 */
typedef ICanvasImageSource = EitherType<ImageElement, EitherType<CanvasElement, EitherType<VideoElement, ImageBitmap>>>;