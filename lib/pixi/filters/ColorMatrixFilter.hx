package pixi.filters;

/**
 * The ColorMatrixFilter class lets you apply a 5x4 matrix transformation
 * on the RGBA color and alpha values of every pixel on your displayObject
 * to produce a result with a new set of RGBA color and alpha values.
 * It's pretty powerful!
 * ```
 * var colorMatrix = new ColorMatrixFilter();
 * container.filters = [colorMatrix];
 * colorMatrix.contrast(2);
 * ```
 * @see Documentation: http://pixijs.download/release/docs/PIXI.filters.ColorMatrixFilter.html
 * @see Source code: http://pixijs.download/release/docs/packages_filters_filter-color-matrix_src_ColorMatrixFilter.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.filters.ColorMatrixFilter")
extern class ColorMatrixFilter extends Filter
{
    /**
     * Create a new ColorMatrixFilter instance.
     */
    public function new();

    /**
     * The opacity value to use when mixing the original and resultant colors.
     * 
     * When the value is 0, the original color is used without modification.
     * When the value is 1, the result color is used. When in the range (0, 1)
     * the color is interpolated between the original and result by this amount.
     * 
     * Default: `1`
     */
    public var alpha:Float;

    /**
     * The matrix of the color matrix filter.  
     * Default: `[1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0]`
     */
    public var matrix:Array<Float>;

    /**
     * Transforms current matrix and set the new one.
     * @param matrix 5x4 Matrix.
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    private function _loadMatrix(matrix:Array<Float>, ?multiply:Bool):Void;

    /**
     * Set the black and white matrice.
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function blackAndWhite(multiply:Bool):Void;

    /**
     * Adjusts brightness.
     * @param b Value of the brigthness. (0-1, where 0 is black)
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function brightness(b:Float, multiply:Bool):Void;

    /**
     * Brown delicious browni filter.
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function browni(multiply:Bool):Void;

    /**
     * We don't know exactly what it does, kind of gradient map, but funny to play with!
     * @param desaturation Tone values.
     * @param toned Tone values.
     * @param lightColor Tone values, example: `0xFFE580`
     * @param darkColor Tone values, example: `0xFFE580`.
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function colorTone(desaturation:Float, toned:Float, lightColor:Int, darkColor:Int, multiply:Bool):Void;

    /**
     * Set the contrast matrix, increase the separation between dark and bright
     * Increase contrast: shadows darker and highlights brighter Decrease contrast:
     * bring the shadows up and the highlights down.
     * @param amount Value of the contrast. (0-1)
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function contrast(amount:Float, multiply:Bool):Void;

    /**
     * Desaturate image. (remove color)  
     * Call the saturate function.
     */
    public function desaturate():Void;

    /**
     * Set the matrices in grey scales.
     * @param scale Value of the grey. (0-1, where 0 is black)
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function greyscale(scale:Float, multiply:Bool):Void;

    /**
     * Set the hue property of the color.
     * @param rotation In degrees.
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function hue(rotation:Float, multiply:Bool):Void;

    /**
     * Color reversal film introduced by Eastman Kodak in 1935.
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function kodachrome(multiply:Bool):Void;

    /**
     * LSD effect.  
     * Multiply the current matrix.
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function lsd(multiply:Bool):Void;

    /**
     * Negative image. (Inverse of classic rgb matrix)
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function negative(multiply:Bool):Void;

    /**
     * Night effect.
     * @param intensity The intensity of the night effect.
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function night(intensity:Float, multiply:Bool):Void;

    /**
     * Polaroid filter.
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function polaroid(multiply:Bool):Void;

    /**
     * Predator effect.  
     * Erase the current matrix by setting a new indepent one.
     * @param amount How much the predator feels his future victim.
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function predator(amount:Float, multiply:Bool):Void;

    /**
     * Erase the current matrix by setting the default one.
     */
    public function reset():Void;

    /**
     * Set the saturation matrix, increase the separation between colors
     * Increase saturation: increase contrast, brightness, and sharpness.
     * @param amount The saturation amount. (0-1) Default: `0`
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function saturate(amount:Float, ?multiply:Bool):Void;

    /**
     * Sepia image.
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function sepia(multiply:Bool):Void;

    /**
     * Color motion picture process invented in 1916.
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function technicolor(multiply:Bool):Void;

    /**
     * Filter who transforms: Red -> Blue and Blue -> Red.
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function toBGR(multiply:Bool):Void;

    /**
     * Vintage filter.
     * @param multiply If true, current matrix and matrix are multiplied.
     *                 If false, just set the current matrix with @param matrix
     */
    public function vintage(multiply:Bool):Void;
}