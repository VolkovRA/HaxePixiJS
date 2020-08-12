package pixi.render.systems;

import js.html.CanvasElement;

/**
 * System plugin to the renderer to manage the context.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.ContextSystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_context_ContextSystem.js.html
 */
@:native("PIXI.systems.ContextSystem")
extern class ContextSystem extends System
{
    /**
     * Create a new ContextSystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * Extensions being used.
     */
    public var extensions(default, null):ExtensionsParams;

    /**
     * `true` if the context is lost.
     */
    public var isLost(default, null):Bool;

    /**
     * Either `1` or `2` to reflect the WebGL version being used.
     */
    public var webGLVersion(default, null):Int;

    /**
     * Handle the context change event.
     * @param gl New webgl context.
     */
    public function contextChange(gl:Dynamic):Void;

    /**
     * Helper class to create a WebGL Context.
     * @param canvas The canvas element that we will get the context from.
     * @param options An options object that gets passed in to the canvas element containing the context attributes.
     * @return The WebGL context.
     * 
     * @see https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/getContext
     */
    public function createContext(canvas:CanvasElement, options:Dynamic):Dynamic;

    /**
     * Generic destroy methods to be overridden by the subclass.
     */
    override public function destroy():Void;

    /**
     * Auto-populate the extensions.
     */
    private function getExtensions():Void;

    /**
     * Handles a lost webgl context.
     * @param event The context lost event. (WebGLContextEvent)
     */
    private function handleContextLost(event:Dynamic):Void;

    /**
     * Handles a restored webgl context.
     */
    private function handleContextRestored():Void;

    /**
     * Initialize the context.
     * @param gl WebGL context. (WebGLRenderingContext)
     */
    private function initFromContext(gl:Dynamic):Void;

    /**
     * Handle the post-render runner event.
     */
    private function postrender():Void;

    /**
     * Validate context.
     * @param gl Render context. (WebGLRenderingContext)
     */
    private function validateContext(gl:Dynamic):Void;
}

/**
 * Extensions being used.
 */
typedef ExtensionsParams =
{
    /**
     * WebGL v1 extension. (WEBGL_draw_buffers)
     */
    var drawBuffers:Dynamic;

    /**
     * WebGL v1 extension. (WEBGL_depth_texture)
     */
    var depthTexture:Dynamic;

    /**
     * WebGL v1 extension. (OES_texture_float)
     */
    var floatTexture:Dynamic;

    /**
     * WebGL v1 extension. (WEBGL_lose_context)
     */
    var loseContext:Dynamic;

    /**
     * WebGL v1 extension. (OES_vertex_array_object)
     */
    var vertexArrayObject:Dynamic;

    /**
     * WebGL v1 and v2 extension. (EXT_texture_filter_anisotropic)
     */
    var anisotropicFiltering:Dynamic;
}