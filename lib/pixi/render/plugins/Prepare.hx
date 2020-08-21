package pixi.render.plugins;

/**
 * The prepare plugin provides renderer-specific plugins for pre-rendering
 * DisplayObjects. These plugins are useful for asynchronously preparing
 * and uploading to the GPU assets, textures, graphics waiting to be displayed.
 * 
 * Do not instantiate this plugin directly. It is available from the
 * `renderer.plugins` property. See [CanvasRenderer.plugins](http://pixijs.download/release/docs/PIXI.CanvasRenderer.html#plugins)
 * or [Renderer.plugins](http://pixijs.download/release/docs/PIXI.Renderer.html#plugins).
 * 
 * Example:
 * ```
 * // Create a new application
 * var app = new Application();
 * document.body.appendChild(app.view);
 * 
 * // Don't start rendering right away
 * app.stop();
 * 
 * // create a display object
 * const rect = new PIXI.Graphics()
 *     .beginFill(0x00ff00)
 *     .drawRect(40, 40, 200, 200);
 * 
 * // Add to the stage
 * app.stage.addChild(rect);
 * 
 * // Don't start rendering until the graphic is uploaded to the GPU
 * app.renderer.plugins.prepare.upload(app.stage, () => {
 *     app.start();
 * });
 * ```
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Prepare_.html
 * @see Source code: http://pixijs.download/release/docs/packages_prepare_src_Prepare.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Prepare")
extern class Prepare extends BasePrepare<Prepare>
{
    /**
     * Create a new Prepare instance.
     * @param renderer A reference to the current renderer.
     */
    public function new(renderer:CanvasRenderer);
}