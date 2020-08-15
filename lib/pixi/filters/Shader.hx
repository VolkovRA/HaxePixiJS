package pixi.filters;

/**
 * A helper class for shaders.
 * @see http://pixijs.download/release/docs/PIXI.Shader.html
 * @see http://pixijs.download/release/docs/packages_core_src_shader_Shader.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Shader")
extern class Shader
{
    /**
     * Create a new Shader instance.
     * @param program The program the shader will use.
     * @param uniforms Custom uniforms to use to augment the built-in ones.
     */
    public function new(?program:Program, ?uniforms:Dynamic);

    /**
     * Program that the shader uses.
     */
    public var program:Program;

    /**
     * Shader uniform values, shortcut for `uniformGroup.uniforms`.
     */
    public var uniforms(default, null):Dynamic;

    /**
     * A short hand function to create a shader based of a vertex and fragment shader.
     * @param vertexSrc The source of the vertex shader.
     * @param fragmentSrc The source of the fragment shader.
     * @param uniforms Custom uniforms to use to augment the built-in ones.
     * @return An shiny new Pixi shader!
     */
    static public function from(?vertexSrc:String, ?fragmentSrc:String, ?uniforms:Dynamic):Shader;
}