package pixi.display;

/**
 * Support line caps in `pixi.LineStyle` for graphics.
 * 
 * *This enum contains values from: `Pixi.LINE_CAP` for more convenient use.*
 */
enum abstract LineCap(String) to String from String
{
    /**
     * Don't add any cap at line ends. (Leaves orthogonal edges)
     */
    var BUTT = "butt";

    /**
     * Add semicircle at ends.
     */
    var ROUND = "round";

    /**
     * Add square at end. (Like `BUTT` except more length at end)
     */
    var SQUARE = "square";
}