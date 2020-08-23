package pixi.events;

/**
 * The PixiJS events.  
 * This enum contains of all base events of PixiJS.
 * @see [DisplayObject events](http://pixijs.download/release/docs/PIXI.DisplayObject.html#event)
 * @see [BaseTexture events](http://pixijs.download/release/docs/PIXI.BaseTexture.html#event)
 * @see [Renderer events](http://pixijs.download/release/docs/PIXI.Renderer.html#event)
 * @see [CanvasRenderer events](http://pixijs.download/release/docs/PIXI.CanvasRenderer.html#event)
 * ***
 * Library: **core** 
 */
enum abstract PixiEvent(String) to String from String
{
    //////////////////////////////
    //   DisplayObject events   //
    //////////////////////////////

    /**
     * Fired when this DisplayObject is added to a Container.
     * @param container The container added to. `pixi.display.Container`
     */
    var ADDED = "added";

    /**
     * Fired when this DisplayObject is removed from a Container.
     * @param container The container removed from. `pixi.display.Container`
     */
    var REMOVED = "removed";



    ////////////////////////////
    //   BaseTexture events   //
    ////////////////////////////

    /**
     * Fired when BaseTexture is destroyed.
     * @param baseTexture Instance of texture being destroyed. `pixi.textures.BaseTexture`
     */
    var DISPOSE = "dispose";

    /**
     * Fired when a not-immediately-available source fails to load.
     * @param baseTexture Resource errored. `pixi.textures.BaseTexture`
     * @param event Load error event. `ErrorEvent`
     */
    var ERROR = "error";

    /**
     * Fired when a not-immediately-available source finishes loading.
     * @param baseTexture Resource loaded. `pixi.textures.BaseTexture`
     */
    var LOADED = "loaded";

    /**
     * Fired when BaseTexture is updated.
     * @param @param baseTexture Instance of texture being updated. `pixi.textures.BaseTexture`
     */
    var UPDATE = "update";



    /////////////////////////
    //   Renderer events   //
    /////////////////////////

    /**
     * Fired when the WebGL context is set.
     * @param gl WebGL context. `js.html.webgl.RenderingContext`
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
     * @param screenWidth The new width of the screen. `Int`
     * @param screenHeight The new height of the screen. `Int`
     */
    var RESIZE = "resize";
}