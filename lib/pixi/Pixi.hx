package pixi;

import haxe.extern.EitherType;
import js.html.CanvasElement;
import js.lib.RegExp;

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
    static public var ALPHA_MODES(default, null):AlphaModes;

    /**
     * Various blend modes supported by PIXI.
     * 
     * IMPORTANT - The WebGL renderer only supports the NORMAL, ADD, MULTIPLY
     * and SCREEN blend modes. Anything else will silently act like NORMAL.
     */
    static public var BLEND_MODES(default, null):BlendModes;

    /**
     * Bitwise OR of masks that indicate the buffers to be cleared.
     */
    static public var BUFFER_BITS(default, null):BufferBits;

    /**
     * How to clear renderTextures in filter.
     */
    static public var CLEAR_MODES(default, null):ClearModes;

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
    static public var DRAW_MODES(default, null):DrawModes;

    /**
     * Different types of environments for WebGL.
     */
    static public var ENV(default, null):Env;

    /**
     * Various GL texture/resources formats.
     */
    static public var FORMATS(default, null):Formats;

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
    static public var GC_MODES(default, null):GCModes;

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
    static public var LINE_CAP(default, null):LineCap;

    /**
     * Supported line joints in `LineStyle` for graphics.
     * 
     * @see https://pixijs.download/dev/docs/PIXI.Graphics.html#lineStyle
     * @see https://graphicdesign.stackexchange.com/questions/59018/what-is-a-bevel-join-of-two-lines-exactly-illustrator
     */
    static public var LINE_JOIN(default ,null):LineJoin;

    /**
     * Constants for mask implementations.
     * 
     * We use `type` suffix because it leads to very different behaviours.
     */
    static public var MASK_TYPES(default, null):MaskTypes;

    /**
     * Mipmap filtering modes that are supported by pixi.
     * 
     * The PIXI.settings.MIPMAP_TEXTURES affects default texture filtering. Mipmaps are generated
     * for a baseTexture if its `mipmap` field is `ON`, or its `POW2` and texture dimensions are powers
     * of 2. Due to platform restriction, `ON` option will work like `POW2` for webgl-1.
     * 
     * This property only affects WebGL.
     */
    static public var MIPMAP_MODES(default, null):MipmapModes;

    /**
     * Constants for multi-sampling antialiasing.
     */
    static public var MSAA_QUALITY(default, null):MSAAQuality;

    /**
     * Two Pi.
     */
    static public var PI_2(default, null):Float;

    /**
     * Constants that specify float precision in shaders.
     */
    static public var PRECISION(default, null):Precision;

    /**
     * Constant to identify the Renderer Type.
     */
    static public var RENDERER_TYPE(default, null):RendererType;

    /**
     * The scale modes that are supported by pixi.
     * 
     * The PIXI.settings.SCALE_MODE scale mode affects the default scaling mode of future operations.
     * It can be re-assigned to either LINEAR or NEAREST, depending upon suitability.
     * 
     * @see https://pixijs.download/dev/docs/PIXI.settings.html#.SCALE_MODE
     */
    static public var SCALE_MODES(default, null):ScaleModes;

    /**
     * Constants that identify shapes, mainly to prevent `instanceof` calls.
     */
    static public var SHAPES(default, null):Shapes;

    /**
     * Various GL target types.
     */
    static public var TARGETS(default, null):Targets;

    /**
     * Constants that define the type of gradient on text.
     */
    static public var TEXT_GRADIENT(default, null):TextGradient;

    /**
     * Various GL data format types.
     */
    static public var TYPES(default, null):Types;

    /**
     * Represents the update priorities used by internal PIXI classes when registered with the
     * PIXI.Ticker object. Higher priority items are updated first and lower priority items,
     * such as render, should go later.
     * 
     * @see https://pixijs.download/dev/docs/PIXI.Ticker_.html
     */
    static public var UPDATE_PRIORITY(default, null):UpdatePriority;

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
    static public var WRAP_MODES(default, null):WrapModes;

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
typedef AlphaModes =
{
    /**
     * Source is not premultiplied, leave it like that.
     * 
     * Option for compressed and data textures that are created from typed arrays.
     */
    var NO_PREMULTIPLIED_ALPHA:Float;

    /**
     * Source is not premultiplied, premultiply on upload. Default option, used for all loaded images.
     */
    var PREMULTIPLY_ON_UPLOAD:Float;

    /**
     * Source is already premultiplied Example: spine atlases with `_pma` suffix.
     */
    var PREMULTIPLIED_ALPHA:Float;

    /**
     * Alias for NO_PREMULTIPLIED_ALPHA.
     */
    var NPM:Float;

    /**
     * Default option, alias for PREMULTIPLY_ON_UPLOAD.
     */
    var UNPACK:Float;

    /**
     * Alias for PREMULTIPLIED_ALPHA.
     */
    var PMA:Float;
}

/**
 * Various blend modes supported by PIXI.
 * 
 * IMPORTANT - The WebGL renderer only supports the NORMAL, ADD, MULTIPLY and SCREEN
 * blend modes. Anything else will silently act like NORMAL.
 */
typedef BlendModes =
{
    var NORMAL:Float;
    var ADD:Float;
    var MULTIPLY:Float;
    var SCREEN:Float;
    var OVERLAY:Float;
    var DARKEN:Float;
    var LIGHTEN:Float;
    var COLOR_DODGE:Float;
    var COLOR_BURN:Float;
    var HARD_LIGHT:Float;
    var SOFT_LIGHT:Float;
    var DIFFERENCE:Float;
    var EXCLUSION:Float;
    var HUE:Float;
    var SATURATION:Float;
    var COLOR:Float;
    var LUMINOSITY:Float;
    var NORMAL_NPM:Float;
    var ADD_NPM:Float;
    var SCREEN_NPM:Float;
    var NONE:Float;
    var SRC_IN:Float;
    var SRC_OUT:Float;
    var SRC_ATOP:Float;
    var DST_OVER:Float;
    var DST_IN:Float;
    var DST_OUT:Float;
    var DST_ATOP:Float;
    var SUBTRACT:Float;
    var SRC_OVER:Float;
    var ERASE:Float;
    var XOR:Float;
}

/**
 * Bitwise OR of masks that indicate the buffers to be cleared.
 */
typedef BufferBits =
{
    /**
     * Indicates the buffers currently enabled for color writing.
     */
    var COLOR:Float;

    /**
     * Indicates the depth buffer.
     */
    var DEPTH:Float;

    /**
     * Indicates the stencil buffer.
     */
    var STENCIL:Float;
}

/**
 * How to clear renderTextures in filter.
 */
typedef ClearModes =
{
    /**
     * Preserve the information in the texture, blend above.
     */
    var BLEND:Float;

    /**
     * Must use gl.clear operation.
     */
    var CLEAR:Float;

    /**
     * Clear or blit it, depends on device and level of paranoia.
     */
    var BLIT:Float;

    /**
     * Alias for BLEND, same as false in earlier versions.
     */
    var NO:Float;

    /**
     * Alias for CLEAR, same as true in earlier versions.
     */
    var YES:Float;

    /**
     * Alias for BLIT.
     */
    var AUTO:Float;
}

/**
 * Various webgl draw modes.
 * 
 * These can be used to specify which GL drawMode to use under certain situations and renderers.
 */
typedef DrawModes =
{
    var POINTS:Float;
    var LINES:Float;
    var LINE_LOOP:Float;
    var LINE_STRIP:Float;
    var TRIANGLES:Float;
    var TRIANGLE_STRIP:Float;
    var TRIANGLE_FAN:Float;
}

/**
 * Different types of environments for WebGL.
 */
typedef Env =
{
    /**
     * Used for older v1 WebGL devices.
     * 
     * PixiJS will aim to ensure compatibility with older / less advanced devices.
     * If you experience unexplained flickering prefer this environment.
     */
    var WEBGL_LEGACY:Float;

    /**
     * Version 1 of WebGL.
     */
    var WEBGL:Float;

    /**
     * Version 2 of WebGL.
     */
    var WEBGL2:Float;
}

/**
 * Various GL texture/resources formats.
 */
typedef Formats =
{
    /**
     * Default: `6408`
     */
    var RGBA:Float;

    /**
     * Default: `6407`
     */
    var RGB:Float;

    /**
     * Default: `6406`
     */
    var ALPHA:Float;

    /**
     * Default: `6409`
     */
    var LUMINANCE:Float;

    /**
     * Default: `6410`
     */
    var LUMINANCE_ALPHA:Float;

    /**
     * Default: `6402`
     */
    var DEPTH_COMPONENT:Float;

    /**
     * Default: `34041`
     */
    var DEPTH_STENCIL:Float;
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
typedef GCModes =
{
    /**
     * Garbage collection will happen periodically automatically.
     */
    var AUTO:Float;

    /**
     * Garbage collection will need to be called manually.
     */
    var MANUAL:Float;
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
typedef LineCap =
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
typedef LineJoin =
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
typedef MaskTypes =
{
    /**
     * Mask is ignored.
     */
    var NONE:Float;

    /**
     * Scissor mask, rectangle on screen, cheap.
     */
    var SCISSOR:Float;

    /**
     * Stencil mask, 1-bit, medium, works only if renderer supports stencil.
     */
    var STENCIL:Float;

    /**
     * Mask that uses SpriteMaskFilter, uses temporary RenderTexture.
     */
    var SPRITE:Float;
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
typedef MipmapModes =
{
    /**
     * No mipmaps.
     */
    var OFF:Float;

    /**
     * Generate mipmaps if texture dimensions are pow2.
     */
    var POW2:Float;

    /**
     * Always generate mipmaps.
     */
    var ON:Float;
}

/**
 * Constants for multi-sampling antialiasing.
 */
typedef MSAAQuality =
{
    /**
     * No multisampling for this renderTexture.
     */
    var NONE:Float;

    /**
     * Try 2 samples.
     */
    var LOW:Float;

    /**
     * Try 4 samples.
     */
    var MEDIUM:Float;

    /**
     * Try 8 samples.
     */
    var HIGH:Float;
}

/**
 * Constants that specify float precision in shaders.
 */
typedef Precision =
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
typedef RendererType =
{
    /**
     * Unknown render type.
     */
    var UNKNOWN:Float;

    /**
     * WebGL render type.
     */
    var WEBGL:Float;

    /**
     * Canvas render type.
     */
    var CANVAS:Float;
}

/**
 * The scale modes that are supported by pixi.
 * 
 * The PIXI.settings.SCALE_MODE scale mode affects the default scaling mode of future operations.
 * It can be re-assigned to either LINEAR or NEAREST, depending upon suitability.
 * 
 * @see https://pixijs.download/dev/docs/PIXI.settings.html#.SCALE_MODE
 */
typedef ScaleModes =
{
    /**
     * Smooth scaling.
     */
    var LINEAR:Float;

    /**
     * Pixelating scaling.
     */
    var NEAREST:Float;
}

/**
 * Constants that identify shapes, mainly to prevent `instanceof` calls.
 */
typedef Shapes =
{
    /**
     * Polygon.
     */
    var POLY:Float;

    /**
     * Rectangle.
     */
    var RECT:Float;

    /**
     * Circle.
     */
    var CIRC:Float;

    /**
     * Ellipse.
     */
    var ELIP:Float;

    /**
     * Rounded Rectangle.
     */
    var RREC:Float;
}

/**
 * Various GL target types.
 */
typedef Targets =
{
    /**
     * Default: `3553`
     */
    var TEXTURE_2D:Float;

    /**
     * Default: `34067`
     */
    var TEXTURE_CUBE_MAP:Float;

    /**
     * Default: `35866`
     */
    var TEXTURE_2D_ARRAY:Float;

    /**
     * Default: `34069`
     */
    var TEXTURE_CUBE_MAP_POSITIVE_X:Float;

    /**
     * Default: `34070`
     */
    var TEXTURE_CUBE_MAP_NEGATIVE_X:Float;

    /**
     * Default: `34071`
     */
    var TEXTURE_CUBE_MAP_POSITIVE_Y:Float;

    /**
     * Default: `34072`
     */
    var TEXTURE_CUBE_MAP_NEGATIVE_Y:Float;

    /**
     * Default: `34073`
     */
    var TEXTURE_CUBE_MAP_POSITIVE_Z:Float;

    /**
     * Default: `34074`
     */
    var TEXTURE_CUBE_MAP_NEGATIVE_Z:Float;
}

/**
 * Constants that define the type of gradient on text.
 */
typedef TextGradient =
{
    /**
     * Vertical gradient.
     */
    var LINEAR_VERTICAL:Float;

    /**
     * Linear gradient.
     */
    var LINEAR_HORIZONTAL:Float;
}

/**
 * Various GL data format types.
 */
typedef Types =
{
    /**
     * Default: `5121`
     */
    var UNSIGNED_BYTE:Float;

    /**
     * Default: `5123`
     */
    var UNSIGNED_SHORT:Float;

    /**
     * Default: `33635`
     */
    var UNSIGNED_SHORT_5_6_5:Float;

    /**
     * Default: `32819`
     */
    var UNSIGNED_SHORT_4_4_4_4:Float;

    /**
     * Default: `32820`
     */
    var UNSIGNED_SHORT_5_5_5_1:Float;

    /**
     * Default: `5126`
     */
    var FLOAT:Float;
    
    /**
     * Default: `36193`
     */
    var HALF_FLOAT:Float;
}

/**
 * Represents the update priorities used by internal PIXI classes when registered with the
 * PIXI.Ticker object. Higher priority items are updated first and lower priority items,
 * such as render, should go later.
 * 
 * @see https://pixijs.download/dev/docs/PIXI.Ticker_.html
 */
typedef UpdatePriority =
{
    /**
     * Highest priority, used for PIXI.InteractionManager
     * 
     * Default: `50`
     * 
     * @see https://pixijs.download/dev/docs/PIXI.InteractionManager.html
     */
    var INTERACTION:Float;

    /**
     * High priority updating, PIXI.VideoBaseTexture and PIXI.AnimatedSprite
     * 
     * Default: `25`
     * 
     * @see https://pixijs.download/dev/docs/PIXI.AnimatedSprite.html
     */
    var HIGH:Float;

    /**
     * Default priority for ticker events, see PIXI.Ticker#add.
     * 
     * Default: `0`
     * 
     * @see https://pixijs.download/dev/docs/PIXI.Ticker_.html#add
     */
    var NORMAL:Float;

    /**
     * Low priority used for PIXI.Application rendering.
     * 
     * Default: `-25`
     * 
     * @see https://pixijs.download/dev/docs/PIXI.Application.html
     */
    var LOW:Float;

    /**
     * Lowest priority used for PIXI.BasePrepare utility.
     * 
     * Default: `-50`
     * 
     * @see https://pixijs.download/dev/docs/PIXI.BasePrepare.html
     */
    var UTILITY:Float;
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
typedef WrapModes =
{
    /**
     * The textures uvs are clamped.
     */
    var CLAMP:Float;

    /**
     * The texture uvs tile and repeat.
     */
    var REPEAT:Float;

    /**
     * The texture uvs tile and repeat with mirroring.
     */
    var MIRRORED_REPEAT:Float;
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