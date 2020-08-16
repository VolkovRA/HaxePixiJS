package pixi.render;

import pixi.enums.GLDataType;

/**
 * Holds the information for a single attribute structure required to render geometry.
 * 
 * This does not contain the actual data, but instead has a buffer id that maps to a
 * `pixi.utils.Buffer` This can include anything from positions, uvs, normals, colors etc.
 * 
 * @see Documentation: https://pixijs.download/dev/docs/PIXI.html
 * @see Source code: https://github.com/pixijs/pixi-sound/tree/main/src
 * ***
 * Library: **core** 
 */
@:native("PIXI.Attribute")
extern class Attribute
{
    /**
     * Create a new Attribute instance.
     * @param buffer The id of the buffer that this attribute will look for.
     * @param size The size of the attribute. If you have 2 floats per vertex (eg position x and y) this would be 2. Default: `0`
     * @param normalized Should the data be normalized. Default: `false`
     * @param type What type of number is the attribute. Check `Pixi.TYPES` to see the ones available. Default: `GLDataType.FLOAT`
     * @param stride How far apart (in floats) the start of each value is. (used for interleaving data) Default: `0`
     * @param start How far into the array to start reading values (used for interleaving data) Default: `0`
     */
    public function new(buffer:String, ?size:Int, ?normalized:Bool, ?type:GLDataType, ?stride:Float, ?start:Int);

    /**
     * Helper function that creates an Attribute based on the information provided.
     * @param buffer The id of the buffer that this attribute will look for.
     * @param size The size of the attribute. If you have 2 floats per vertex (eg position x and y) this would be 2. Default: `0`
     * @param normalized Should the data be normalized. Default: `false`
     * @param type What type of number is the attribute. Check `Pixi.TYPES` to see the ones available. Default: `GLDataType.FLOAT`
     * @param stride How far apart (in floats) the start of each value is. (used for interleaving data) Default: `0`
     * @return A new `Attribute` based on the information provided.
    */
    public static function from(buffer:String, ?size:Int, ?normalized:Bool, ?type:GLDataType, ?stride:Float):Attribute;

    /**
     * Destroys the Attribute.
     */
    public function destroy():Void;
}