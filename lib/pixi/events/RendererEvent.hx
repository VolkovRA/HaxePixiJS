package pixi.events;

/**
 * The events of Renderer object.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Renderer.html#event
 */
enum abstract RendererEvent(String) to String from String
{
    /**
     * Fired when the WebGL context is set.
     * @param gl WebGL context. (js.html.webgl.RenderingContext)
     */
    var CONTEXT = "context";

    /**
     * Fired after rendering finishes.
     */
    var POSTRENDER = "postrender";

    /**
     * Fired before rendering starts.
     */
    var PRERENDER = "prerender";

    /**
     * Fired after view has been resized.
     * @param screenWidth The new width of the screen. (Int)
     * @param screenHeight The new height of the screen. (Int)
     */
    var RESIZE = "resize";
}