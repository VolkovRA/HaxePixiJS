package pixi.display;

/**
 * The scale modes that are supported by pixi.
 * 
 * The `pixi.Settings.SCALE_MODE` scale mode affects the default scaling mode of future operations.
 * It can be re-assigned to either LINEAR or NEAREST, depending upon suitability.
 * 
 * *This enum contains values from: `Pixi.SCALE_MODES` for more convenient use.*
 */
enum abstract ScaleMode(Int) to Int from Int
{
    /**
     * Pixelating scaling.
     */
    var NEAREST = 0;

    /**
     * Smooth scaling.
     */
    var LINEAR = 1;
}