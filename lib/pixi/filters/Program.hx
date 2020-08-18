package pixi.filters;

/**
 * Helper class to create a shader program.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Program.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_shader_Program.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Program")
extern class Program
{
    /**
     * Create a new shader program instance.
     * @param vertexSrc The source of the vertex shader.
     * @param fragmentSrc The source of the fragment shader.
     * @param name Name for shader. Default: `pixi-shader`
     */
    public function new(?vertexSrc:String, ?fragmentSrc:String, ?name:String);

    /**
     * The default fragment shader source.
     */
    static public var defaultFragmentSrc:String;

    /**
     * The default vertex shader source.
     */
    static public var defaultVertexSrc:String;

    /**
     * The fragment shader.
     */
    public var fragmentSrc:String;

    /**
     * The vertex shader.
     */
    public var vertexSrc:String;

    /**
     * A short hand function to create a program based of a vertex and fragment shader
     * this method will also check to see if there is a cached program.
     * @param vertexSrc The source of the vertex shader.
     * @param fragmentSrc The source of the fragment shader.
     * @param name Name for shader. Default: `pixi-shader`
     * @return An shiny new Pixi shader!
     */
    static public function from(?vertexSrc:String, ?fragmentSrc:String, ?name:String):Program;

    /**
     * Extracts the data for a buy creating a small test program or reading the src directly.
     * @param vertexSrc The source of the vertex shader.
     * @param fragmentSrc The source of the fragment shader.
     */
    private function extractData(?vertexSrc:String, ?fragmentSrc:String):Void;
}