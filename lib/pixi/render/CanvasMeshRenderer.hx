package pixi.render;

import pixi.display.Mesh;

/**
 * Renderer dedicated to meshes.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.CanvasMeshRenderer.html
 * @see Source code: http://pixijs.download/release/docs/packages_canvas_canvas-mesh_src_CanvasMeshRenderer.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.CanvasMeshRenderer")
extern class CanvasMeshRenderer
{
    /**
     * Create a new CanvasMeshRenderer instance.
     * @param renderer The renderer this downport works for.
     */
    private function new(renderer:CanvasRenderer);

    /**
     * Destroy the the renderer.
     */
    public function destroy():Void;

    /**
     * Renders the Mesh.
     * @param mesh The Mesh to render.
     */
    public function render(mesh:Mesh):Void;
}