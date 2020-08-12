package pixi;

import haxe.extern.EitherType;
import js.html.CanvasElement;
import js.lib.RegExp;
import pixi.render.CanvasRenderer;
import pixi.render.Renderer;

/**
 * Contains all of the functionality for using the pixi-sound library.
 * 
 * This is deisnged to play audio with WebAudio and fallback to HTML5.
 * 
 * @see Documentation: https://pixijs.download/dev/docs/PIXI.html
 * @see Source code: https://github.com/pixijs/pixi-sound/tree/main/src
 */
@:native("PIXI")
extern class Pixi
{
    /**
     * String of the current PIXI version.
     */
    static public var VERSION(default, null):String;

    /**
     * How to treat textures with premultiplied alpha.
     */
    static public var ALPHA_MODES(default, null):AlphaModesEnum;

    /**
     * Various blend modes supported by PIXI.
     * 
     * IMPORTANT - The WebGL renderer only supports the NORMAL, ADD, MULTIPLY
     * and SCREEN blend modes. Anything else will silently act like NORMAL.
     */
    static public var BLEND_MODES(default, null):BlendModesEnum;

    /**
     * Bitwise OR of masks that indicate the buffers to be cleared.
     */
    static public var BUFFER_BITS(default, null):BufferBitsEnum;

    /**
     * How to clear renderTextures in filter.
     */
    static public var CLEAR_MODES(default, null):ClearModesEnum;

    /**
     * Regexp for data URI. Based on: https://github.com/ragingwind/data-uri-regex
     * 
     * Example:
     * ```
     * data:image/png;base64
     * ```
     */
    static public var DATA_URI(default, null):EitherType<String, RegExp>;

    /**
     * Default filter vertex shader.
     */
    static public var defaultFilterVertex:String;

    /**
     * Default vertex shader.
     */
    static public var defaultVertex:String;

    /**
     * Conversion factor for converting degrees to radians.
     */
    static public var DEG_TO_RAD(default, null):Float;

    /**
     * Conversion factor for converting radians to degrees.
     */
    static public var RAD_TO_DEG(default, null):Float;

    /**
     * Various webgl draw modes.
     * 
     * These can be used to specify which GL drawMode to use under certain situations and renderers.
     */
    static public var DRAW_MODES(default, null):DrawModesEnum;

    /**
     * Different types of environments for WebGL.
     */
    static public var ENV(default, null):EnvEnum;

    /**
     * Various GL texture/resources formats.
     */
    static public var FORMATS(default, null):FormatsEnum;

    /**
     * The gc modes that are supported by pixi.
     * 
     * The PIXI.settings.GC_MODE Garbage Collection mode for PixiJS textures is AUTO If set to GC_MODE,
     * the renderer will occasionally check textures usage. If they are not used for a specified period
     * of time they will be removed from the GPU. They will of course be uploaded again when they are
     * required. This is a silent behind the scenes process that should ensure that the GPU does not
     * get filled up.
     * 
     * Handy for mobile devices! This property only affects WebGL.
     */
    static public var GC_MODES(default, null):GCModesEnum;

    /**
     * Graphics curves resolution settings.
     * 
     * If `adaptive` flag is set to `true`, the resolution is calculated based on the curve's length to
     * ensure better visual quality. Adaptive draw works with `bezierCurveTo` and `quadraticCurveTo`.
     */
    static public var GRAPHICS_CURVES(default, null):GraphicsCurves;

    /**
     * Support line caps in `LineStyle` for graphics.
     * 
     * @see https://pixijs.download/dev/docs/PIXI.Graphics.html#lineStyle
     */
    static public var LINE_CAP(default, null):LineCapEnum;

    /**
     * Supported line joints in `LineStyle` for graphics.
     * 
     * @see https://pixijs.download/dev/docs/PIXI.Graphics.html#lineStyle
     * @see https://graphicdesign.stackexchange.com/questions/59018/what-is-a-bevel-join-of-two-lines-exactly-illustrator
     */
    static public var LINE_JOIN(default ,null):LineJoinEnum;

    /**
     * Constants for mask implementations.
     * 
     * We use `type` suffix because it leads to very different behaviours.
     */
    static public var MASK_TYPES(default, null):MaskTypesEnum;

    /**
     * Mipmap filtering modes that are supported by pixi.
     * 
     * The PIXI.settings.MIPMAP_TEXTURES affects default texture filtering. Mipmaps are generated
     * for a baseTexture if its `mipmap` field is `ON`, or its `POW2` and texture dimensions are powers
     * of 2. Due to platform restriction, `ON` option will work like `POW2` for webgl-1.
     * 
     * This property only affects WebGL.
     */
    static public var MIPMAP_MODES(default, null):MipmapModesEnum;

    /**
     * Constants for multi-sampling antialiasing.
     */
    static public var MSAA_QUALITY(default, null):MSAAQualityEnum;

    /**
     * Two Pi.
     */
    static public var PI_2(default, null):Float;

    /**
     * Constants that specify float precision in shaders.
     */
    static public var PRECISION(default, null):PrecisionEnum;

    /**
     * Constant to identify the Renderer Type.
     */
    static public var RENDERER_TYPE(default, null):RendererTypeEnum;

    /**
     * The scale modes that are supported by pixi.
     * 
     * The PIXI.settings.SCALE_MODE scale mode affects the default scaling mode of future operations.
     * It can be re-assigned to either LINEAR or NEAREST, depending upon suitability.
     * 
     * @see https://pixijs.download/dev/docs/PIXI.settings.html#.SCALE_MODE
     */
    static public var SCALE_MODES(default, null):ScaleModesEnum;

    /**
     * Constants that identify shapes, mainly to prevent `instanceof` calls.
     */
    static public var SHAPES(default, null):ShapesEnum;

    /**
     * Various GL target types.
     */
    static public var TARGETS(default, null):TargetsEnum;

    /**
     * Constants that define the type of gradient on text.
     */
    static public var TEXT_GRADIENT(default, null):TextGradientEnum;

    /**
     * Various GL data format types.
     */
    static public var TYPES(default, null):TypesEnum;

    /**
     * Represents the update priorities used by internal PIXI classes when registered with the
     * PIXI.Ticker object. Higher priority items are updated first and lower priority items,
     * such as render, should go later.
     * 
     * @see https://pixijs.download/dev/docs/PIXI.Ticker_.html
     */
    static public var UPDATE_PRIORITY(default, null):UpdatePriorityEnum;

    /**
     * The wrap modes that are supported by pixi.
     * 
     * The PIXI.settings.WRAP_MODE wrap mode affects the default wrapping mode of future operations.
     * It can be re-assigned to either CLAMP or REPEAT, depending upon suitability. If the texture is
     * non power of two then clamp will be used regardless as WebGL can only use REPEAT if the texture
     * is po2.
     * 
     * This property only affects WebGL.
     * 
     * @see https://pixijs.download/dev/docs/PIXI.settings.html#.WRAP_MODE
     */
    static public var WRAP_MODES(default, null):WrapModesEnum;

    /**
     * This helper function will automatically detect which renderer you should be using.
     * 
     * WebGL is the preferred renderer as it is a lot faster. If WebGL is not supported by the browser
     * then this function will return a canvas renderer.
     * 
     * @param options The optional renderer parameters.
     * @return Returns WebGL renderer if available, otherwise CanvasRenderer.
     */
    static public function autoDetectRenderer(?options:RendererOptions):EitherType<Renderer,CanvasRenderer>;

    /**
     * Deprecations (backward compatibilities) are automatically applied for browser bundles in the UMD
     * module format. If using Webpack or Rollup, you'll need to apply these deprecations manually by
     * doing something like this:
     * 
     * Example:
     * ```
     * import * as PIXI from 'pixi.js';
     * PIXI.useDeprecated(); // MUST be bound to namespace
     * ```
     */
    static public function useDeprecated():Void;
}

/**
 * How to treat textures with premultiplied alpha.
 */
typedef AlphaModesEnum =
{
    /**
     * Source is not premultiplied, leave it like that.
     * 
     * Option for compressed and data textures that are created from typed arrays.
     */
    var NO_PREMULTIPLIED_ALPHA:Int;

    /**
     * Source is not premultiplied, premultiply on upload. Default option, used for all loaded images.
     */
    var PREMULTIPLY_ON_UPLOAD:Int;

    /**
     * Source is already premultiplied Example: spine atlases with `_pma` suffix.
     */
    var PREMULTIPLIED_ALPHA:Int;

    /**
     * Alias for NO_PREMULTIPLIED_ALPHA.
     */
    var NPM:Int;

    /**
     * Default option, alias for PREMULTIPLY_ON_UPLOAD.
     */
    var UNPACK:Int;

    /**
     * Alias for PREMULTIPLIED_ALPHA.
     */
    var PMA:Int;
}

/**
 * Various blend modes supported by PIXI.
 * 
 * IMPORTANT - The WebGL renderer only supports the NORMAL, ADD, MULTIPLY and SCREEN
 * blend modes. Anything else will silently act like NORMAL.
 */
typedef BlendModesEnum =
{
    var NORMAL:Int;
    var ADD:Int;
    var MULTIPLY:Int;
    var SCREEN:Int;
    var OVERLAY:Int;
    var DARKEN:Int;
    var LIGHTEN:Int;
    var COLOR_DODGE:Int;
    var COLOR_BURN:Int;
    var HARD_LIGHT:Int;
    var SOFT_LIGHT:Int;
    var DIFFERENCE:Int;
    var EXCLUSION:Int;
    var HUE:Int;
    var SATURATION:Int;
    var COLOR:Int;
    var LUMINOSITY:Int;
    var NORMAL_NPM:Int;
    var ADD_NPM:Int;
    var SCREEN_NPM:Int;
    var NONE:Int;
    var SRC_IN:Int;
    var SRC_OUT:Int;
    var SRC_ATOP:Int;
    var DST_OVER:Int;
    var DST_IN:Int;
    var DST_OUT:Int;
    var DST_ATOP:Int;
    var SUBTRACT:Int;
    var SRC_OVER:Int;
    var ERASE:Int;
    var XOR:Int;
}

/**
 * Bitwise OR of masks that indicate the buffers to be cleared.
 */
typedef BufferBitsEnum =
{
    /**
     * Indicates the buffers currently enabled for color writing.
     */
    var COLOR:Int;

    /**
     * Indicates the depth buffer.
     */
    var DEPTH:Int;

    /**
     * Indicates the stencil buffer.
     */
    var STENCIL:Int;
}

/**
 * How to clear renderTextures in filter.
 */
typedef ClearModesEnum =
{
    /**
     * Preserve the information in the texture, blend above.
     */
    var BLEND:Int;

    /**
     * Must use gl.clear operation.
     */
    var CLEAR:Int;

    /**
     * Clear or blit it, depends on device and level of paranoia.
     */
    var BLIT:Int;

    /**
     * Alias for BLEND, same as false in earlier versions.
     */
    var NO:Int;

    /**
     * Alias for CLEAR, same as true in earlier versions.
     */
    var YES:Int;

    /**
     * Alias for BLIT.
     */
    var AUTO:Int;
}

/**
 * Various webgl draw modes.
 * 
 * These can be used to specify which GL drawMode to use under certain situations and renderers.
 */
typedef DrawModesEnum =
{
    var POINTS:Int;
    var LINES:Int;
    var LINE_LOOP:Int;
    var LINE_STRIP:Int;
    var TRIANGLES:Int;
    var TRIANGLE_STRIP:Int;
    var TRIANGLE_FAN:Int;
}

/**
 * Different types of environments for WebGL.
 */
typedef EnvEnum =
{
    /**
     * Used for older v1 WebGL devices.
     * 
     * PixiJS will aim to ensure compatibility with older / less advanced devices.
     * If you experience unexplained flickering prefer this environment.
     */
    var WEBGL_LEGACY:Int;

    /**
     * Version 1 of WebGL.
     */
    var WEBGL:Int;

    /**
     * Version 2 of WebGL.
     */
    var WEBGL2:Int;
}

/**
 * Various GL texture/resources formats.
 */
typedef FormatsEnum =
{
    /**
     * Default: `6408`
     */
    var RGBA:Int;

    /**
     * Default: `6407`
     */
    var RGB:Int;

    /**
     * Default: `6406`
     */
    var ALPHA:Int;

    /**
     * Default: `6409`
     */
    var LUMINANCE:Int;

    /**
     * Default: `6410`
     */
    var LUMINANCE_ALPHA:Int;

    /**
     * Default: `6402`
     */
    var DEPTH_COMPONENT:Int;

    /**
     * Default: `34041`
     */
    var DEPTH_STENCIL:Int;
}

/**
 * The gc modes that are supported by pixi.
 * 
 * The PIXI.settings.GC_MODE Garbage Collection mode for PixiJS textures is AUTO If set to GC_MODE,
 * the renderer will occasionally check textures usage. If they are not used for a specified period
 * of time they will be removed from the GPU. They will of course be uploaded again when they are
 * required. This is a silent behind the scenes process that should ensure that the GPU does not
 * get filled up.
 * 
 * Handy for mobile devices! This property only affects WebGL.
 */
typedef GCModesEnum =
{
    /**
     * Garbage collection will happen periodically automatically.
     */
    var AUTO:Int;

    /**
     * Garbage collection will need to be called manually.
     */
    var MANUAL:Int;
}

/**
 * Graphics curves resolution settings.
 * 
 * If `adaptive` flag is set to `true`, the resolution is calculated based on the curve's length to
 * ensure better visual quality. Adaptive draw works with `bezierCurveTo` and `quadraticCurveTo`.
 */
typedef GraphicsCurves =
{
    /**
     * Flag indicating if the resolution should be adaptive.
     * 
     * Default: `false`
     */
    var adaptive:Bool;

    /**
     * Maximal length of a single segment of the curve (if adaptive = false, ignored).
     * 
     * Default: `10`
     */
    var maxLength:Float;

    /**
     * Minimal number of segments in the curve (if adaptive = false, ignored)
     * 
     * Default: `8`
     */
    var minSegments:Float;

    /**
     * maximal number of segments in the curve (if adaptive = false, ignored)
     * 
     * Default: `2048`
     */
    var maxSegments:Float;
}

/**
 * Support line caps in `LineStyle` for graphics.
 * 
 * @see https://pixijs.download/dev/docs/PIXI.Graphics.html#lineStyle
 */
typedef LineCapEnum =
{
    /**
     * 'butt': don't add any cap at line ends (leaves orthogonal edges)
     */
    var BUTT:String;

    /**
     * 'round': add semicircle at ends
     */
    var ROUND:String;

    /**
     * 'square': add square at end (like `BUTT` except more length at end)
     */
    var SQUARE:String;
}

/**
 * Supported line joints in `LineStyle` for graphics.
 * 
 * @see https://pixijs.download/dev/docs/PIXI.Graphics.html#lineStyle
 * @see https://graphicdesign.stackexchange.com/questions/59018/what-is-a-bevel-join-of-two-lines-exactly-illustrator
 */
typedef LineJoinEnum =
{
    /**
     * 'miter': make a sharp corner where outer part of lines meet
     */
    var MITER:String;

    /**
     * 'bevel': add a square butt at each end of line segment and fill the triangle at turn
     */
    var BEVEL:String;

    /**
     * 'round': add an arc at the joint
     */
    var ROUND:String;
}

/**
 * Constants for mask implementations.
 * 
 * We use `type` suffix because it leads to very different behaviours.
 */
typedef MaskTypesEnum =
{
    /**
     * Mask is ignored.
     */
    var NONE:Int;

    /**
     * Scissor mask, rectangle on screen, cheap.
     */
    var SCISSOR:Int;

    /**
     * Stencil mask, 1-bit, medium, works only if renderer supports stencil.
     */
    var STENCIL:Int;

    /**
     * Mask that uses SpriteMaskFilter, uses temporary RenderTexture.
     */
    var SPRITE:Int;
}

/**
 * Mipmap filtering modes that are supported by pixi.
 * 
 * The PIXI.settings.MIPMAP_TEXTURES affects default texture filtering. Mipmaps are generated
 * for a baseTexture if its `mipmap` field is `ON`, or its `POW2` and texture dimensions are powers
 * of 2. Due to platform restriction, `ON` option will work like `POW2` for webgl-1.
 * 
 * This property only affects WebGL.
 */
typedef MipmapModesEnum =
{
    /**
     * No mipmaps.
     */
    var OFF:Int;

    /**
     * Generate mipmaps if texture dimensions are pow2.
     */
    var POW2:Int;

    /**
     * Always generate mipmaps.
     */
    var ON:Int;
}

/**
 * Constants for multi-sampling antialiasing.
 */
typedef MSAAQualityEnum =
{
    /**
     * No multisampling for this renderTexture.
     */
    var NONE:Int;

    /**
     * Try 2 samples.
     */
    var LOW:Int;

    /**
     * Try 4 samples.
     */
    var MEDIUM:Int;

    /**
     * Try 8 samples.
     */
    var HIGH:Int;
}

/**
 * Constants that specify float precision in shaders.
 */
typedef PrecisionEnum =
{
    /**
     * Default: `lowp`
     */
    var LOW:String;

    /**
     * Default: `mediump`
     */
    var MEDIUM:String;

    /**
     * Default: `highp`
     */
    var HIGH:String;
}

/**
 * Constant to identify the Renderer Type.
 */
typedef RendererTypeEnum =
{
    /**
     * Unknown render type.
     */
    var UNKNOWN:Int;

    /**
     * WebGL render type.
     */
    var WEBGL:Int;

    /**
     * Canvas render type.
     */
    var CANVAS:Int;
}

/**
 * The scale modes that are supported by pixi.
 * 
 * The PIXI.settings.SCALE_MODE scale mode affects the default scaling mode of future operations.
 * It can be re-assigned to either LINEAR or NEAREST, depending upon suitability.
 * 
 * @see https://pixijs.download/dev/docs/PIXI.settings.html#.SCALE_MODE
 */
typedef ScaleModesEnum =
{
    /**
     * Smooth scaling.
     */
    var LINEAR:Int;

    /**
     * Pixelating scaling.
     */
    var NEAREST:Int;
}

/**
 * Constants that identify shapes, mainly to prevent `instanceof` calls.
 */
typedef ShapesEnum =
{
    /**
     * Polygon.
     */
    var POLY:Int;

    /**
     * Rectangle.
     */
    var RECT:Int;

    /**
     * Circle.
     */
    var CIRC:Int;

    /**
     * Ellipse.
     */
    var ELIP:Int;

    /**
     * Rounded Rectangle.
     */
    var RREC:Int;
}

/**
 * Various GL target types.
 */
typedef TargetsEnum =
{
    /**
     * Default: `3553`
     */
    var TEXTURE_2D:Int;

    /**
     * Default: `34067`
     */
    var TEXTURE_CUBE_MAP:Int;

    /**
     * Default: `35866`
     */
    var TEXTURE_2D_ARRAY:Int;

    /**
     * Default: `34069`
     */
    var TEXTURE_CUBE_MAP_POSITIVE_X:Int;

    /**
     * Default: `34070`
     */
    var TEXTURE_CUBE_MAP_NEGATIVE_X:Int;

    /**
     * Default: `34071`
     */
    var TEXTURE_CUBE_MAP_POSITIVE_Y:Int;

    /**
     * Default: `34072`
     */
    var TEXTURE_CUBE_MAP_NEGATIVE_Y:Int;

    /**
     * Default: `34073`
     */
    var TEXTURE_CUBE_MAP_POSITIVE_Z:Int;

    /**
     * Default: `34074`
     */
    var TEXTURE_CUBE_MAP_NEGATIVE_Z:Int;
}

/**
 * Constants that define the type of gradient on text.
 */
typedef TextGradientEnum =
{
    /**
     * Vertical gradient.
     */
    var LINEAR_VERTICAL:Int;

    /**
     * Linear gradient.
     */
    var LINEAR_HORIZONTAL:Int;
}

/**
 * Various GL data format types.
 */
typedef TypesEnum =
{
    /**
     * Default: `5121`
     */
    var UNSIGNED_BYTE:Int;

    /**
     * Default: `5123`
     */
    var UNSIGNED_SHORT:Int;

    /**
     * Default: `33635`
     */
    var UNSIGNED_SHORT_5_6_5:Int;

    /**
     * Default: `32819`
     */
    var UNSIGNED_SHORT_4_4_4_4:Int;

    /**
     * Default: `32820`
     */
    var UNSIGNED_SHORT_5_5_5_1:Int;

    /**
     * Default: `5126`
     */
    var FLOAT:Int;
    
    /**
     * Default: `36193`
     */
    var HALF_FLOAT:Int;
}

/**
 * Represents the update priorities used by internal PIXI classes when registered with the
 * PIXI.Ticker object. Higher priority items are updated first and lower priority items,
 * such as render, should go later.
 * 
 * @see https://pixijs.download/dev/docs/PIXI.Ticker_.html
 */
typedef UpdatePriorityEnum =
{
    /**
     * Highest priority, used for PIXI.InteractionManager
     * 
     * Default: `50`
     * 
     * @see https://pixijs.download/dev/docs/PIXI.InteractionManager.html
     */
    var INTERACTION:Int;

    /**
     * High priority updating, PIXI.VideoBaseTexture and PIXI.AnimatedSprite
     * 
     * Default: `25`
     * 
     * @see https://pixijs.download/dev/docs/PIXI.AnimatedSprite.html
     */
    var HIGH:Int;

    /**
     * Default priority for ticker events, see PIXI.Ticker#add.
     * 
     * Default: `0`
     * 
     * @see https://pixijs.download/dev/docs/PIXI.Ticker_.html#add
     */
    var NORMAL:Int;

    /**
     * Low priority used for PIXI.Application rendering.
     * 
     * Default: `-25`
     * 
     * @see https://pixijs.download/dev/docs/PIXI.Application.html
     */
    var LOW:Int;

    /**
     * Lowest priority used for PIXI.BasePrepare utility.
     * 
     * Default: `-50`
     * 
     * @see https://pixijs.download/dev/docs/PIXI.BasePrepare.html
     */
    var UTILITY:Int;
}

/**
 * The wrap modes that are supported by pixi.
 * 
 * The PIXI.settings.WRAP_MODE wrap mode affects the default wrapping mode of future operations.
 * It can be re-assigned to either CLAMP or REPEAT, depending upon suitability. If the texture is
 * non power of two then clamp will be used regardless as WebGL can only use REPEAT if the texture
 * is po2.
 * 
 * This property only affects WebGL.
 * 
 * @see https://pixijs.download/dev/docs/PIXI.settings.html#.WRAP_MODE
 */
typedef WrapModesEnum =
{
    /**
     * The textures uvs are clamped.
     */
    var CLAMP:Int;

    /**
     * The texture uvs tile and repeat.
     */
    var REPEAT:Int;

    /**
     * The texture uvs tile and repeat with mirroring.
     */
    var MIRRORED_REPEAT:Int;
}

/**
 * The optional renderer parameters.
 */
typedef RendererOptions =
{
    /**
     * The width of the renderers view.
     * 
     * Default: `800`
     */
    @:optional var width:Int;

    /**
     * The height of the renderers view.
     * 
     * Default: `600`
     */
    @:optional var height:Int;

    /**
     * The canvas to use as a view.
     */
    @:optional var view:CanvasElement;

    /**
     * If the render view is transparent.
     * 
     * Default: `false`
     */
    @:optional var transparent:Bool;

    /**
     * Resizes renderer view in CSS pixels to allow for resolutions other than 1.
     * 
     * Default: `false`
     */
    @:optional var autoDensity:Bool;

    /**
     * Sets antialias.
     * 
     * Default: `false`
     */
    @:optional var antialias:Bool;

    /**
     * Enables drawing buffer preservation, enable this if you need to call toDataUrl on the webgl context.
     * 
     * Default: `false`
     */
    @:optional var preserveDrawingBuffer:Bool;

    /**
     * The background color of the rendered area (shown if not transparent).
     * 
     * Default: `0x000000`
     */
    @:optional var backgroundColor:Int;

    /**
     * This sets if the renderer will clear the canvas or not before the new render pass.
     * 
     * Default: `true`
     */
    @:optional var clearBeforeRender:Bool;

    /**
     * The resolution / device pixel ratio of the renderer, retina would be 2.
     * 
     * Default: `1`
     */
    @:optional var resolution:Float;

    /**
     * Prevents selection of WebGL renderer, even if such is present, this option only is
     * available when using **pixi.js-legacy** or **@pixi/canvas-renderer** modules,
     * otherwise it is ignored.
     * 
     * Default: `false`
     */
    @:optional var forceCanvas:Bool;

    /**
     * Parameter passed to webgl context, set to "high-performance" for devices with dual
     * graphics card **webgl only**.
     */
    @:optional var powerPreference:String;
}