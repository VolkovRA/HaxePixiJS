package pixi.geom;

import pixi.geom.Point;

/**
 * The PixiJS Matrix as a class makes it a lot faster.  
 * Here is a representation of it:
 * ```
 * | a | c | tx|
 * | b | d | ty|
 * | 0 | 0 | 1 |
 * ```
 * @see Documentation: https://pixijs.download/dev/docs/PIXI.Matrix.html
 * @see Source code: https://pixijs.download/dev/docs/packages_math_src_Matrix.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Matrix")
extern class Matrix
{
    /**
     * Create a new Matrix instance.
     * @param a X Scale. Default: `1`
     * @param b X Skew. Default: `0`
     * @param c Y Skew. Default: `0`
     * @param d Y Scale. Default: `1`
     * @param tx X Translation. Default: `0`
     * @param ty Y Translation. Default: `0`
     */
    public function new(?a:Float, ?b:Float, ?c:Float, ?d:Float, ?tx:Float, ?ty:Float);

    /**
     * A default (identity) matrix.
     */
    static public var IDENTITY(default, null):Matrix;

    /**
     * A temp matrix.
     */
    static public var TEMP_MATRIX(default, null):Matrix;

    /**
     * X Scale.  
     * Default: `1`
     */
    public var a:Float;

    /**
     * X Skew.  
     * Default: `0`
     */
    public var b:Float;

    /**
     * Y Skew.  
     * Default: `0`
     */
    public var c:Float;

    /**
     * Y Scale.  
     * Default: `1`
     */
    public var d:Float;

    /**
     * X Translation.  
     * Default: `0`
     */
    public var tx:Float;

    /**
     * Y Translation.  
     * Default: `0`
     */
    public var ty:Float;

    /**
     * Appends the given Matrix to this Matrix.
     * @param matrix The matrix to append.
     * @return This matrix. Good for chaining method calls.
     */
    public function append(matrix:Matrix):Matrix;

    /**
     * Get a new position with the current transformation applied.
     * Can be used to go from a child's coordinate space to the world coordinate space. (e.g. rendering)
     * @param pos The origin.
     * @param newPos The point that the new position is assigned to. (allowed to be same as input)
     * @return The new point, transformed through this matrix.
     */
    public function apply(pos:IPointData, ?newPos:Point):Point;

    /**
     * Get a new position with the inverse of the current transformation applied.
     * Can be used to go from the world coordinate space to a child's coordinate space. (e.g. input)
     * @param pos The origin.
     * @param newPos The point that the new position is assigned to. (allowed to be same as input)
     * @return The new point, inverse-transformed through this matrix.
     */
    public function applyInverse(pos:IPointData, ?newPos:Point):Point;

    /**
     * Creates a new Matrix object with the same values as this one.
     * @return A copy of this matrix. Good for chaining method calls.
     */
    public function clone():Matrix;

    /**
     * Changes the values of the matrix to be the same as the ones in given matrix.
     * @param matrix The matrix to copy from.
     * @return This matrix. Good for chaining method calls.
     */
    public function copyFrom(matrix:Matrix):Matrix;

    /**
     * Changes the values of the given matrix to be the same as the ones in this matrix.
     * @param matrix The matrix to copy to.
     * @return The matrix given in parameter with its values updated.
     */
    public function copyTo(matrix:Matrix):Matrix;

    /**
     * Decomposes the matrix (x, y, scaleX, scaleY, and rotation) and sets the properties on to a transform.
     * @param transform The transform to apply the properties to.
     * @return The transform with the newly applied properties.
     */
    public function decompose(transform:Transform):Transform;

    /**
     * Creates a Matrix object based on the given array.
     * The Element to Matrix mapping order is as follows:
     * ```
     * a = array[0] b = array[1] c = array[3] d = array[4] tx = array[2] ty = array[5]
     * ```
     * @param array The array that the matrix will be populated from.
     */
    public function fromArray(array:Array<Float>):Void;

    /**
     * Resets this Matrix to an identity (default) matrix.
     * @return This matrix. Good for chaining method calls.
     */
    public function identity():Matrix;

    /**
     * Inverts this matrix.
     * @return This matrix. Good for chaining method calls.
     */
    public function invert():Matrix;

    /**
     * Prepends the given Matrix to this Matrix.
     * @param matrix The matrix to prepend.
     * @return This matrix. Good for chaining method calls.
     */
    public function prepend(matrix:Matrix):Matrix;

    /**
     * Applies a rotation transformation to the matrix.
     * @param angle The angle in radians.
     * @return This matrix. Good for chaining method calls.
     */
    public function rotate(angle:Float):Matrix;

    /**
     * Applies a scale transformation to the matrix.
     * @param x The amount to scale horizontally.
     * @param y The amount to scale vertically.
     * @return This matrix. Good for chaining method calls.
     */
    public function scale(x:Float, y:Float):Matrix;

    /**
     * Sets the matrix properties.
     * @param a X Scale.
     * @param b X Skew.
     * @param c Y Skew.
     * @param d Y Scale.
     * @param tx X Translation.
     * @param ty Y Translation.
     * @return This matrix. Good for chaining method calls.
     */
    public function set(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Matrix;

    /**
     * Sets the matrix based on all the available properties.
     * @param x Position on the x axis.
     * @param y Position on the y axis.
     * @param pivotX Pivot on the x axis.
     * @param pivotY Pivot on the y axis.
     * @param scaleX Scale on the x axis.
     * @param scaleY Scale on the y axis.
     * @param rotation Rotation in radians.
     * @param skewX Skew on the x axis.
     * @param skewY Skew on the y axis.
     * @return This matrix. Good for chaining method calls.
     */
    public function setTransform(x:Float, y:Float, pivotX:Float, pivotY:Float, scaleX:Float, scaleY:Float, rotation:Float, skewX:Float, skewY:Float):Matrix;

    /**
     * Creates an array from the current Matrix object.
     * @param transpose Whether we need to transpose the matrix or not.
     * @param out If provided the array will be assigned to out. Default: `new Array<Float>(); // length: 9`
     * @return The newly created array which contains the matrix.
     */
    public function toArray(transpose:Bool, ?out:Array<Float>):Array<Float>;

    /**
     * Translates the matrix on the x and y.
     * @param x How much to translate x by.
     * @param y How much to translate y by.
     * @return This matrix. Good for chaining method calls.
     */
    public function translate(x:Float, y:Float):Matrix;
}