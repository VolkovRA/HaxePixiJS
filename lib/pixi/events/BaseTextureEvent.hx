package pixi.events;

/**
 * The events of BaseTexture.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.BaseTexture.html#event
 * ***
 * Library: **core** 
 */
enum abstract BaseTextureEvent(String) to String from String
{
    /**
     * Fired when BaseTexture is destroyed.
     * @param baseTexture Instance of texture being destroyed. (BaseTexture)
     */
    var DISPOSE = "dispose";

    /**
     * Fired when a not-immediately-available source fails to load.
     * @param baseTexture Resource errored. (BaseTexture)
     * @param event Load error event. (ErrorEvent)
     */
    var ERROR = "error";

    /**
     * Fired when a not-immediately-available source finishes loading.
     * @param baseTexture Resource loaded. (BaseTexture)
     */
    var LOADED = "loaded";

    /**
     * Fired when BaseTexture is updated.
     * @param @param baseTexture Instance of texture being updated. (BaseTexture)
     */
    var UPDATE = "update";
}