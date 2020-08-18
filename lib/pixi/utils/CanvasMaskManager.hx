package pixi.utils;

import haxe.extern.EitherType;
import pixi.display.Container;
import pixi.display.Graphics;
import pixi.render.CanvasRenderer;
import pixi.render.MaskData;

/**
 * A set of functions used to handle masking.  
 * Sprite masking is not supported on the CanvasRenderer.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.CanvasMaskManager.html
 * @see Source code: http://pixijs.download/release/docs/packages_canvas_canvas-renderer_src_utils_CanvasMaskManager.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.CanvasMaskManager")
extern class CanvasMaskManager
{
    /**
     * Create a new CanvasMaskManager instance.
     * @param renderer The canvas renderer.
     */
    public function new(renderer:CanvasRenderer);

    /**
     * Destroys this canvas mask manager.
     */
    public function destroy():Void;

    /**
     * Restores the current drawing context to the state it was before the mask was applied.
     * @param renderer The renderer context to use.
     */
    public function popMask(renderer:CanvasRenderer):Void;

    /**
     * This method adds it to the current stack of masks.
     * @param maskData The maskData that will be pushed.
     */
    public function pushMask(maskData:EitherType<MaskData,Graphics>):Void;

    /**
     * Renders all PIXI.Graphics shapes in a subtree.
     * @param container Container to scan.
     * @param out Where to put found shapes.
     */
    public function recursiveFindShapes(container:Container, out:Array<Graphics>):Void;
    
    /**
     * Renders a PIXI.Graphics shape.
     * @param graphics The object to render.
     */
    public function renderGraphicsShape(graphics:Graphics):Void;
}