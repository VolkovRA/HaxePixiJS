package pixi.utils;

import js.lib.Float32Array;
import pixi.textures.TextureMatrix;

/**
 * Class controls cache for UV mapping from Texture normal space
 * to BaseTexture normal space.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.MeshBatchUvs.html
 * @see Source code: http://pixijs.download/release/docs/packages_mesh_src_MeshBatchUvs.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.MeshBatchUvs")
extern class MeshBatchUvs
{
    /**
     * Create a new MeshBatchUvs instance.
     * @param uvBuffer Buffer with normalized uv's.
     * @param uvMatrix Material UV matrix.
     */
    public function new(uvBuffer:Buffer, uvMatrix:TextureMatrix);

    /**
     * UV Buffer data.
     */
    public var data(default, null):Float32Array;

    /**
     * Buffer with normalized UV's.
     */
    public var uvBuffer:Buffer;

    /**
     * Material UV matrix.
     */
    public var uvMatrix:TextureMatrix;

    /**
     * Updates.
     * @param forceUpdate Force the update.
     */
    public function update(?forceUpdate:Bool):Void;
}