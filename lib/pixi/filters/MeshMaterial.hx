package pixi.filters;

import pixi.display.Mesh;
import pixi.filters.Program;
import pixi.render.CanvasRenderer;
import pixi.textures.Texture;
import pixi.textures.TextureMatrix;

/**
 * A helper class for shaders.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.MeshMaterial.html
 * @see Source code: http://pixijs.download/release/docs/packages_mesh_src_MeshMaterial.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.MeshMaterial")
extern class MeshMaterial extends Shader
{
    /**
     * Create a new Shader instance.
     * @param uSampler Texture that material uses to render.
     * @param options Additional options
     */
    public function new(uSampler:Texture, ?options:MeshMaterialOptions);

    /**
     * This gets automatically set by the object using this.  
     * Default: `1`
     */
    public var alpha:Float;
    
    /**
     * `true` if shader can be batch with the renderer's batch system.  
     * Default: `true`
     */
    public var batchable:Bool;

    /**
     * Renderer plugin for batching.  
     * Default: `batch`
     */
    public var pluginName:String;

    /**
     * Reference to the texture being rendered.
     */
    public var texture:Texture;

    /**
     * Multiply tint for the material.  
     * Default: `0xFFFFFF`
     */
    public var tint:Int;

    /**
     * TextureMatrix instance for this Mesh, used to track Texture changes.
     */
    public var uvMatrix:TextureMatrix;

    /**
     * Renders the mesh using the Canvas renderer.
     * @param renderer The canvas renderer.
     * @param mesh Mesh to render.
     */
    private function render(renderer:CanvasRenderer, mesh:Mesh):Void;

    /**
     * Gets called automatically by the Mesh.
     * Intended to be overridden for custom MeshMaterial objects.
     */
    public function update():Void;
}

/**
 * The options of MeshMaterial.
 */
typedef MeshMaterialOptions =
{
    /**
     * Default alpha.  
     * Default: `1`
     */
    @:optional var alpha:Float;

    /**
     * Default tint.  
     * Default: `0xFFFFFF`
     */
    @:optional var tint:Int;

    /**
     * Renderer plugin for batching.  
     * Default: `batch`
     */
    @:optional var pluginName:String;

    /**
     * Custom program.  
     * Default: `0xFFFFFF`
     */
    @:optional var program:Program;

    /**
     * Custom uniforms.
     */
    @:optional var uniforms:Dynamic;
}