package pixi.render;

import pixi.display.DisplayObject;
import pixi.display.ParticleContainer;
import pixi.filters.Shader;

/**
 * Renderer for Particles that is designer for speed over feature set.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.ParticleRenderer.html
 * @see Source code: http://pixijs.download/release/docs/packages_particles_src_ParticleRenderer.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.ParticleRenderer")
extern class ParticleRenderer
{
    /**
     * Create a new ParticleRenderer instance.
     * @param renderer The renderer this sprite batch works for.
     */
    public function new(renderer:Renderer);

    /**
     * The default shader that is used if a sprite doesn't have a more specific one.
     */
    public var shader:Shader;

    /**
     * The WebGL state in which this renderer will work.
     */
    public var state(default, null):State;

    /**
     * Destroys the ParticleRenderer.
     */
    public function destroy():Void;

    /**
     * Renders the particle container object.
     * @param container The container to render using this ParticleRenderer.
     */
    public function render(container:ParticleContainer):Void;

    /**
     * Uploads the position.
     * @param children The array of display objects to render.
     * @param startIndex The index to start from in the children array.
     * @param amount The amount of children that will have their positions uploaded.
     * @param array The vertices to upload.
     * @param stride Stride to use for iteration.
     * @param offset Offset to start at.
     */
    public function uploadPosition( children:Array<DisplayObject>,
                                    startIndex:Int,
                                    amount:Int,
                                    array:Array<Float>,
                                    stride:Int,
                                    offset:Int
    ):Void;

    /**
     * Uploads the rotation.
     * @param children The array of display objects to render.
     * @param startIndex The index to start from in the children array.
     * @param amount The amount of children that will have their positions uploaded.
     * @param array The vertices to upload.
     * @param stride Stride to use for iteration.
     * @param offset Offset to start at.
     */
    public function uploadRotation( children:Array<DisplayObject>,
                                    startIndex:Int,
                                    amount:Int,
                                    array:Array<Float>,
                                    stride:Int,
                                    offset:Int
    ):Void;

    /**
     * Uploads the tint.
     * @param children The array of display objects to render.
     * @param startIndex The index to start from in the children array.
     * @param amount The amount of children that will have their positions uploaded.
     * @param array The vertices to upload.
     * @param stride Stride to use for iteration.
     * @param offset Offset to start at.
     */
     public function uploadTint (   children:Array<DisplayObject>,
                                    startIndex:Int,
                                    amount:Int,
                                    array:Array<Float>,
                                    stride:Int,
                                    offset:Int
    ):Void;

    /**
     * Uploads the Uvs.
     * @param children The array of display objects to render.
     * @param startIndex The index to start from in the children array.
     * @param amount The amount of children that will have their positions uploaded.
     * @param array The vertices to upload.
     * @param stride Stride to use for iteration.
     * @param offset Offset to start at.
     */
    public function uploadUvs ( children:Array<DisplayObject>,
                                startIndex:Int,
                                amount:Int,
                                array:Array<Float>,
                                stride:Int,
                                offset:Int
    ):Void;

    /**
     * Uploads the vertices.
     * @param children The array of display objects to render.
     * @param startIndex The index to start from in the children array.
     * @param amount The amount of children that will have their positions uploaded.
     * @param array The vertices to upload.
     * @param stride Stride to use for iteration.
     * @param offset Offset to start at.
     */
    public function uploadVertices( children:Array<DisplayObject>,
                                    startIndex:Int,
                                    amount:Int,
                                    array:Array<Float>,
                                    stride:Int,
                                    offset:Int
    ):Void;
}