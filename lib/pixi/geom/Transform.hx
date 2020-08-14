package pixi.geom;

/**
 * Transform that takes care about its versions.
 * @see https://pixijs.download/dev/docs/PIXI.Transform.html
 * @see Source code: https://pixijs.download/dev/docs/packages_math_src_Transform.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Transform")
extern class Transform
{
    /**
     * Create a new Transform instance.
     */
    public function new();

    /**
     * A default (identity) transform.
     */
    static public var IDENTITY(default, null):Transform;

    /**
     * The locally unique ID of the local transform used to calculate the
     * current local transformation matrix.
     */
    private var _currentLocalID:Int;

    /**
     * The X-coordinate value of the normalized local X axis, the first column
     * of the local transformation matrix without a scale.
     */
    private var _cx:Float;

    /**
     * The X-coordinate value of the normalized local Y axis, the second column
     * of the local transformation matrix without a scale.
     */
    private var _cy:Float;

    /**
     * The locally unique ID of the local transform.
     */
    private var _localID:Int;

    /**
     * The locally unique ID of the parent's world transform used to calculate
     * the current world transformation matrix.
     */
    private var _parentID:Int;

    /**
     * The rotation amount.
     */
    private var _rotation:Float;

    /**
     * The Y-coordinate value of the normalized local X axis, the first column
     * of the local transformation matrix without a scale.
     */
    private var _sx:Float;

    /**
     * The Y-coordinate value of the normalized local Y axis, the second column
     * of the local transformation matrix without a scale.
     */
    private var _sy:Float;

    /**
     * The locally unique ID of the world transform.
     */
    private var _worldID:Int;

    /**
     * The local transformation matrix.
     */
    public var localTransform:Matrix;

    /**
     * The pivot point of the displayObject that it rotates around.
     */
    public var pivot:ObservablePoint;

    /**
     * The coordinate of the object relative to the local coordinates of the parent.
     */
    public var position:ObservablePoint;

    /**
     * The rotation of the object in radians.
     */
    public var rotation:Float;

    /**
     * The scale factor of the object.
     */
    public var scale:ObservablePoint;

    /**
     * The skew amount, on the x and y axis.
     */
    public var skew:ObservablePoint;

    /**
     * The world transformation matrix.
     */
    public var worldTransform:Matrix;

    /**
     * Called when a value changes.
     */
    private function onChange():Void;

    /**
     * Decomposes a matrix and sets the transforms properties based on it.
     * @param matrix The matrix to decompose.
     */
    public function setFromMatrix(matrix:Matrix):Void;

    /**
     * Updates the local transformation matrix.
     */
    public function updateLocalTransform():Void;

    /**
     * Called when the skew or the rotation changes.
     */
    private function updateSkew():Void;

    /**
     * Updates the local and the world transformation matrices.
     * @param parentTransform The parent transform.
     */
    public function updateTransform(parentTransform:Transform):Void;
}