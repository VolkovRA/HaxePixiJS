package pixi.utils;

import haxe.extern.EitherType;
import js.lib.ArrayBuffer;
import js.lib.ArrayBufferView;

/**
 * A wrapper for data so that it can be used and uploaded by WebGL.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Buffer.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_geometry_Buffer.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Buffer")
extern class Buffer
{
    /**
     * Create a new Buffer instance.
     * @param data The data to store in the buffer.
     * @param _static `true` for static buffer. Default: `true`
     * @param index `true` for index buffer. Default: `false`
     */
    public function new(data:EitherType<ArrayBuffer,ArrayBufferView>, ?_static:Bool, ?index:Bool);

    /**
     * The data in the buffer, as a typed array.  
     * Can be:
     * - js.lib.ArrayBuffer
     * - js.lib.ArrayBufferView
     */
    public var data:Dynamic;

    /**
     * Helper function that creates a buffer based on an array or TypedArray.
     * @param data The TypedArray that the buffer will store. If this is a regular
     *             Array it will be converted to a Float32Array.
     * @return A new Buffer based on the data provided.
     */
    static public function from(data:EitherType<ArrayBufferView,Array<Float>>):Buffer;

    /**
     * Destroys the buffer.
     */
    public function destroy():Void;

    /**
     * Disposes WebGL resources that are connected to this geometry.
     */
    public function dispose():Void;

    /**
     * Flags this buffer as requiring an upload to the GPU.
     * @param data The data to update in the buffer.
     */
    public function update(data:EitherType<ArrayBuffer,ArrayBufferView>):Void;
}