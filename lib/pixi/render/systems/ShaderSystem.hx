package pixi.render.systems;

import js.html.webgl.Program;
import pixi.filters.Shader;

/**
 * System plugin to the renderer to manage shaders.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.systems.ShaderSystem.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_shader_ShaderSystem.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.systems.ShaderSystem")
extern class ShaderSystem extends System
{
    /**
     * Create a new ShaderSystem instance.
     * @param renderer The renderer this System works for.
     */
    public function new(renderer:Renderer);

    /**
     * The current WebGL rendering context.
     */
    public var gl:Dynamic;

    /**
     * Changes the current shader to the one given in parameter.
     * @param shader The new shader.
     * @param dontSync `false` if the shader should automatically sync its uniforms.
     * @return The glProgram that belongs to the shader.
     */
    public function bind(shader:Shader, ?dontSync:Bool):GLProgram;

    /**
     * Destroys this System and removes all its textures.
     */
    override public function destroy():Void;

    /**
     * Returns the underlying GLShade rof the currently bound shader.
     * This can be handy for when you to have a little more control over the setting of your uniforms.
     * @return The glProgram for the currently bound Shader for this context.
     */
    public function getglProgram():GLProgram;

    /**
     * Resets ShaderSystem state, does not affect WebGL state.
     */
    public function reset():Void;

    /**
     * Uploads the uniforms values to the currently bound shader.
     * @param uniforms The uniforms values that be applied to the current shader.
     */
    public function setUniforms(uniforms:Dynamic):Void;

    /**
     * Syncs uniforms on the group.
     * @param group The uniform group to sync.
     * @param syncData This is data that is passed to the sync function and any nested sync functions.
     */
    public function syncUniformGroup(group:Dynamic, ?syncData:Dynamic):Void;
}

/**
 * Helper class to create a WebGL Program.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.GLProgram.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_shader_GLProgram.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.GLProgram")
extern class GLProgram
{
    /**
     * Makes a new Pixi program.
     * @param program WEBGL Program.
     * @param uniformData Uniforms.
     */
    public function new(program:Program, uniformData:Dynamic);

    /**
     * Destroys this program.
     */
    public function destroy():Void;
}