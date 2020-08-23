package pixi.utils;

import pixi.geom.Matrix;

/**
 * Implements the dihedral group D8, which is similar to
 * [group D4](https://mathworld.wolfram.com/DihedralGroupD4.html);
 * D8 is the same but with diagonals, and it is used for
 * texture rotations.
 * 
 * The directions the U- and V- axes after rotation of an angle
 * of `a: GD8Constant` are the vectors `(uX(a), uY(a))`
 * and `(vX(a), vY(a))`. These aren't necessarily unit vectors.
 * 
 * **Origin:**  
 * This is the small part of gameofbombs.com portal system. It works.
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.groupD8.html
 * @see [PIXI.groupD8.E](http://pixijs.download/release/docs/PIXI.groupD8.html#.E)
 * @see [PIXI.groupD8.SE](http://pixijs.download/release/docs/PIXI.groupD8.html#.SE)
 * @see [PIXI.groupD8.S](http://pixijs.download/release/docs/PIXI.groupD8.html#.S)
 * @see [PIXI.groupD8.SW](http://pixijs.download/release/docs/PIXI.groupD8.html#.SW)
 * @see [PIXI.groupD8.W](http://pixijs.download/release/docs/PIXI.groupD8.html#.W)
 * @see [PIXI.groupD8.NW](http://pixijs.download/release/docs/PIXI.groupD8.html#.NW)
 * @see [PIXI.groupD8.N](http://pixijs.download/release/docs/PIXI.groupD8.html#.N)
 * @see [PIXI.groupD8.NE](http://pixijs.download/release/docs/PIXI.groupD8.html#.NE)
 * ***
 * Library: **core** 
 */
@:native("PIXI.groupD8")
extern class GroupD8
{
    /**
     * East. `0°`
     */
    static public var E(default, null):Float;

    /**
     * North. `-90°/270°↻`
     */
    static public var N(default, null):Float;

    /**
     * Northeast. `-45°/315°↻`
     */
    static public var NE(default, null):Float;

    /**
     * Northwest. `-135°/225°↻`
     */
    static public var NW(default, null):Float;

    /**
     * South. `90°↻`
     */
    static public var S(default, null):Float;

    /**
     * Southeast. `45°↻`
     */
    static public var SE(default, null):Float;

    /**
     * Southwest. `135°↻`
     */
    static public var SW(default, null):Float;

    /**
     * West. `180°`
     */
    static public var W(default, null):Float;

    /**
     * Reflection about the main diagonal.
     */
    static public var MAIN_DIAGONAL(default, null):Float;

    /**
     * Reflection about X-axis.
     */
    static public var MIRROR_HORIZONTAL(default, null):Float;

    /**
     * Reflection about Y-axis.
     */
    static public var MIRROR_VERTICAL(default, null):Float;

    /**
     * Reflection about reverse diagonal.
     */
    static public var REVERSE_DIAGONAL(default, null):Float;

    /**
     * Composes the two D8 operations.  
     * Taking `^` as reflection:
     * 
     * ||E=0|S=2|W=4|N=6|E^=8|S^=10|W^=12|N^=14|
     * |:-|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
     * |E=0|E|S|W|N|E^|S^|W^|N^|
     * |S=2|S|W|N|E|S^|W^|N^|E^|
     * |W=4|W|N|E|S|W^|N^|E^|S^|
     * |N=6|N|E|S|W|N^|E^|S^|W^|
     * |E^=8|E^|N^|W^|S^|E|N|W|S|
     * |S^=10|S^|E^|N^|W^|S|E|N|W|
     * |W^=12|W^|S^|E^|N^|W|S|E|N|
     * |N^=14|N^|W^|S^|E^|N|W|S|E|
     * 
     * [This is a Cayley table](https://en.wikipedia.org/wiki/Cayley_table)
     * 
     * @param rotationSecond Second operation, which is the row in the above cayley table.
     * @param rotationFirst First operation, which is the column in the above cayley table.
     * @return Composed operation.
     */
    static public function add(rotationSecond:Float, rotationFirst:Float):Float;

    /**
     * Approximates the vector `V(dx,dy)` into one of the eight directions provided by `groupD8`.
     * @param dx X-component of the vector.
     * @param dy Y-component of the vector.
     * @return Approximation of the vector into one of the eight symmetries.
     */
    static public function byDirection(dx:Float, dy:Float):Float;

    /**
     * Symmetry whose opposite is needed. Only rotations have opposite symmetries while
     * reflections don't.
     * @param rotation Rotation.
     * @return The opposite symmetry of `rotation`.
     */
    static public function inv(rotation:Float):Float;

    /**
     * Checks if the rotation angle is vertical, i.e. south or north.
     * It doesn't work for reflections.
     * @param rotation The number to check.
     * @return Whether or not the direction is vertical.
     */
    static public function isVertical(rotation:Float):Bool;

    /**
     * Helps sprite to compensate texture packer rotation.
     * @param matrix Sprite world matrix.
     * @param rotation The rotation factor to use.
     * @param tx Sprite anchoring.
     * @param ty Sprite anchoring.
     */
    static public function matrixAppendRotationInv(matrix:Matrix, rotation:Float, tx:Float, ty:Float):Void;

    /**
     * Adds 180 degrees to rotation, which is a commutative operation.
     * @param rotation The number to rotate.
     * @return Rotated number.
     */
    static public function rotate180(rotation:Float):Float;

    /**
     * Reverse of `add`.
     * @param rotationSecond Second operation.
     * @param rotationFirst First operation.
     * @return Result.
     */
    static public function sub(rotationSecond:Float, rotationFirst:Float):Float;

    /**
     * uX.
     * @param ind Sprite rotation angle.
     * @return The X-component of the U-axis after rotating the axes.
     */
    static public function uX(ind:Float):Float;

    /**
     * uY.
     * @param ind Sprite rotation angle.
     * @return The Y-component of the U-axis after rotating the axes.
     */
    static public function uY(ind:Float):Float;

    /**
     * vX.
     * @param ind Sprite rotation angle.
     * @return The X-component of the V-axis after rotating the axes.
     */
    static public function vX(ind:Float):Float;

    /**
     * vY.
     * @param ind Sprite rotation angle.
     * @return The Y-component of the V-axis after rotating the axes.
     */
    static public function vY(ind:Float):Float;
}