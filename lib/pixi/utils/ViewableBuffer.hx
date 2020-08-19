package pixi.utils;

import js.lib.ArrayBuffer;
import js.lib.Uint32Array;
import js.lib.Float32Array;
import js.lib.Int16Array;
import js.lib.Int32Array;
import js.lib.Int8Array;
import js.lib.Uint16Array;
import js.lib.Uint8Array;

/**
 * Flexible wrapper around `ArrayBuffer` that also provides typed array views on demand.
 * @see Documentation: http://pixijs.download/release/docs/PIXI.ViewableBuffer.html
 * @see Source code: http://pixijs.download/release/docs/packages_core_src_geometry_ViewableBuffer.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.ViewableBuffer")
extern class ViewableBuffer
{
    /**
     * Create a new ViewableBuffer instance.
     * @param size The size of the buffer in bytes.
     */
    public function new(size:Int);

    /**
     * View on the raw binary data as a `Float32Array`.
     */
    public var float32View:Float32Array;

    /**
     * View on the raw binary data as a `Int8Array`.
     */
    public var int8View:Int8Array;

    /**
     * View on the raw binary data as a `Int16Array`.
     */
    public var int16View:Int16Array;

    /**
     * View on the raw binary data as a `Int32Array`.
     */
    public var int32View:Int32Array;

    /**
     * Underlying `ArrayBuffer` that holds all the data and is of capacity `size`.
     */
    public var rawBinaryData:ArrayBuffer;

    /**
     * View on the raw binary data as a `Uint8Array`.
     */
    public var uint8View:Uint8Array;

    /**
     * View on the raw binary data as a `Uint16Array`.
     */
    public var uint16View:Uint16Array;

    /**
     * View on the raw binary data as a `Uint32Array`.
     */
    public var uint32View:Uint32Array;

    /**
     * Destroys all buffer references. Do not use after calling this.
     */
    public function destroy():Void;

    /**
     * Returns the view of the given type.
     * @param type One of: `int8`, `uint8`, `int16`, `uint16`, `int32`, `uint32`, and `float32`.
     * @return Typed array of given type.
     */
    public function view(type:ViewableBufferType):Dynamic;
}

/**
 * Array type of view.
 * ***
 * Library: **core**  
 */
enum abstract ViewableBufferType(String) to String from String
{
    /**
     * The Int8Array.
     */
    var INT8 = "int8";

    /**
     * The Uint8Array.
     */
    var UINT8 = "uint8";

    /**
     * The Int16Array.
     */
    var INT16 = "int16";

    /**
     * The Uint16Array.
     */
    var UINT16 = "uint16";

    /**
     * The Int32Array.
     */
    var INT32 = "int32";

    /**
     * The Uint32Array.
     */
    var UINT32 = "uint32";

    /**
     * The Float32Array.
     */
    var FLOAT32 = "float32";
}