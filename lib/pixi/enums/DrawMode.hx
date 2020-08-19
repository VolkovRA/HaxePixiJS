package pixi.enums;

/**
 * Various webgl draw modes.
 * These can be used to specify which GL drawMode to use under certain situations and renderers.
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.DRAW_MODES` for more convenience.*
 */
enum abstract DrawMode(Int) to Int from Int
{
    var POINTS = 0;
    var LINES = 1;
    var LINE_LOOP = 2;
    var LINE_STRIP = 3;
    var TRIANGLES = 4;
    var TRIANGLE_STRIP = 5;
    var TRIANGLE_FAN = 6;
}