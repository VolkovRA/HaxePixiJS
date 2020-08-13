package pixi;

import js.RegExp;
import pixi.display.ScaleMode;
import pixi.filters.Precision;
import pixi.textures.MipmapMode;
import pixi.textures.WrapMode;

/**
 * User's customizable globals for overriding the default PIXI settings,
 * such as a renderer's default resolution, framerate, float precision, etc.
 * 
 * Example:
 * ```
 * // Use the native window resolution as the default resolution
 * // will support high-density displays when rendering
 * Settings.RESOLUTION = window.devicePixelRatio;
 * 
 * // Disable interpolation when scaling, will make texture be pixelated
 * Settings.SCALE_MODE = ScaleMode.NEAREST;
 * ```
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.settings.html
 */
@:native("PIXI.settings")
extern class Settings
{
    /**
     * Default anisotropic filtering level of textures. Usually from `0` to `16`.
     * 
     * Default: `0`
     */
    static public var ANISOTROPIC_LEVEL:Float;
    
    /**
     * Can we upload the same buffer in a single frame?
     */
    static public var CAN_UPLOAD_SAME_BUFFER:Bool;

    /**
     * Enables bitmap creation before image load. This feature is experimental.
     * 
     * Default: `false`
     */
    static public var CREATE_IMAGE_BITMAP:Bool;

    /**
     * Should the `failIfMajorPerformanceCaveat` flag be enabled as a context option
     * used in the `isWebGLSupported` function. For most scenarios this should be left
     * as true, as otherwise the user may have a poor experience. However, it can be
     * useful to disable under certain scenarios, such as headless unit tests.
     * 
     * Default: `true`
     */
    static public var FAIL_IF_MAJOR_PERFORMANCE_CAVEAT:Bool;

    /**
     * Default filter resolution.
     * 
     * Default: `1`
     */
    static public var FILTER_RESOLUTION:Float;

    /**
     * Default Garbage Collection maximum check count.
     * 
     * Default: `600`
     */
    static public var GC_MAX_CHECK_COUNT:Int;

    /**
     * Default Garbage Collection max idle.
     * 
     * Default: `3600`
     */
    static public var GC_MAX_IDLE:Int;

    /**
     * Default Garbage Collection mode.
     * 
     * Default: `GCModes.AUTO`
     */
    static public var GC_MODE:GCMode;

    /**
     * Default `canvasPadding` for canvas-based Mesh rendering.
     * 
     * Default: `0`
     * 
     * @see Mesh2d#canvasPadding
     */
    static public var MESH_CANVAS_PADDING:Float;

    /**
     * If set to true WebGL will attempt make textures mimpaped by default.
     * Mipmapping will only succeed if the base texture uploaded has power of two dimensions.
     * 
     * Default: `MipmapMode.POW2`
     */
    static public var MIPMAP_TEXTURES:MipmapMode;

    /**
     * Default specify float precision in fragment shader.
     * iOS is best set at highp due to https://github.com/pixijs/pixi.js/issues/3742
     * 
     * Default: `Precision.MEDIUM`
     */
    static public var PRECISION_FRAGMENT:Precision;

    /**
     * Default specify float precision in vertex shader.
     * 
     * Default: `Precision.HIGH`
     */
    static public var PRECISION_VERTEX:Precision;

    /**
     * The maximum support for using WebGL.
     * 
     * If a device does not support WebGL version, for instance WebGL 2, it will still
     * attempt to fallback support to WebGL 1. If you want to explicitly remove feature
     * support to target a more stable baseline, prefer a lower environment.
     * 
     * Due to bug in chromium we disable webgl2 by default for all non-apple mobile devices.
     * 
     * Default: `Environment.WEBGL2`
     */
    static public var PREFER_ENV:Environment; 

    /**
     * The default render options if none are supplied to `Renderer` or `CanvasRenderer`.
     */
    static public var RENDER_OPTIONS:Pixi.RendererOptions;

    /**
     * Default resolution / device pixel ratio of the renderer.
     * 
     * Default: `1`
     */
    static public var RESOLUTION:Float;

    /**
     * The prefix that denotes a URL is for a retina asset.
     * 
     * Example:
     * ```
     * `@2x`
     * ```
     * 
     * Default: `/@([0-9\.]+)x/`
     */
    static public var RETINA_PREFIX:RegExp;

    /**
     * If true PixiJS will Math.floor() x/y values when rendering, stopping pixel interpolation.
     * 
     * Advantages can include sharper image quality (like text) and faster rendering on canvas.
     * The main disadvantage is movement of objects may appear less smooth.
     * 
     * Default: `false`
     */
    static public var ROUND_PIXELS(default, null):Bool;

    /**
     * Default scale mode for textures.
     * 
     * Default: `ScaleMode.LINEAR`
     */
    static public var SCALE_MODE:ScaleMode;

    /**
     * Sets the default value for the container property 'sortableChildren'.
     * If set to true, the container will sort its children by zIndex value when updateTransform()
     * is called, or manually if sortChildren() is called.
     * 
     * This actually changes the order of elements in the array, so should be treated as a basic
     * solution that is not performant compared to other solutions, such as @link
     * https://github.com/pixijs/pixi-display
     * 
     * Also be aware of that this may not work nicely with the addChildAt() function, as the
     * zIndex sorting may cause the child to automatically sorted to another position.
     * 
     * Default: `false`
     */
    static public var SORTABLE_CHILDREN(default, null):Bool;

    /**
     * The default sprite batch size.
     * 
     * The default aims to balance desktop and mobile devices.
     * 
     * Default: `4096`
     */
    static public var SPRITE_BATCH_SIZE:Int;

    /**
     * The maximum textures that this device supports.
     * 
     * Default: `32`
     */
    static public var SPRITE_MAX_TEXTURES:Int;

    /**
     * If set to `true`, *only* Textures and BaseTexture objects stored in
     * the caches (TextureCache and BaseTextureCache) can be used when
     * calling Texture.from or BaseTexture.from. Otherwise, these `from` calls
     * throw an exception. Using this property can be useful if you want to
     * enforce preloading all assets with Loader.
     * 
     * Default: `false`
     */
    static public var STRICT_TEXTURE_CACHE:Bool;

    /**
     * Target frames per millisecond.
     * 
     * Default: `0.06`
     */
    static public var TARGET_FPMS:Float;

    /**
     * Default number of uploads per frame using prepare plugin.
     * 
     * Default: `4`
     */
    static public var UPLOADS_PER_FRAME:Int;

    /**
     * Default wrap modes that are supported by pixi.
     * 
     * Default: `WrapMode.CLAMP`
     */
    static public var WRAP_MODE:WrapMode;
}