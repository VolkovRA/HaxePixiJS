package pixi.utils;

/**
 * The BatchPluginFactory.
 * 
 * Example:
 * ```
 * var fragment = `
 * varying vec2 vTextureCoord;
 * varying vec4 vColor;
 * varying float vTextureId;
 * uniform sampler2D uSamplers[%count%];
 * 
 * void main(void){
 *     vec4 color;
 *     %forloop%
 *     gl_FragColor = vColor * vec4(color.a - color.rgb, color.a);
 * }
 * `;
 * var InvertBatchRenderer = BatchPluginFactory.create({ fragment });
 * Renderer.registerPlugin('invert', InvertBatchRenderer);
 * var sprite = new Sprite();
 * sprite.pluginName = 'invert';
 * ```
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.BatchPluginFactory.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_batch_BatchPluginFactory.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.BatchPluginFactory")
extern class BatchPluginFactory
{
    /**
     * Create a new BatchPluginFactory instance.
     */
    public function new();

    /**
     * The default fragment shader source.
     */
    static public var defaultFragmentTemplate(default, null):String;

    /**
     * The default vertex shader source.
     */
    static public var defaultVertexSrc(default, null):String;

    /**
     * Create a new BatchRenderer plugin for Renderer.
     * This convenience can provide an easy way to extend BatchRenderer
     * with all the necessary pieces.
     * @param options BatchPluginFactory.
     * @return New batch renderer plugin.
     */
    static public function create(?options:BatchPluginFactoryOptions):Dynamic;
}

/**
 * The options of BatchPluginFactory.
 */
typedef BatchPluginFactoryOptions =
{
    /**
     * Vertex shader source.  
     * Default: `BatchGeometry.defaultVertexSrc`
     */
    @:optional var vertex:String;

    /**
     * Fragment shader template.  
     * Default: `BatchGeometry.defaultFragmentTemplate`
     */
    @:optional var fragment:String;

    /**
     * Vertex size.  
     * Default: `6`
     */
    @:optional var vertexSize:Float;

    /**
     * The class.  
     * Default: `BatchGeometry`
     */
    @:optional var geometryClass:Dynamic;
}