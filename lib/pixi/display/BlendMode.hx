package pixi.display;

/**
 * Various blend modes supported by PIXI.
 * 
 * IMPORTANT - The WebGL renderer only supports the NORMAL, ADD, MULTIPLY and
 * SCREEN blend modes. Anything else will silently act like NORMAL.
 * 
 * *This enum contains values from: `Pixi.BLEND_MODES` for more convenient use.*
 */
enum abstract BlendMode(Int) to Int from Int
{
    var NORMAL = 0;
    var ADD = 1;
    var MULTIPLY = 2;
    var SCREEN = 3;
    var OVERLAY = 4;
    var DARKEN = 5;
    var LIGHTEN = 6;
    var COLOR_DODGE = 7;
    var COLOR_BURN = 8;
    var HARD_LIGHT = 9;
    var SOFT_LIGHT = 10;
    var DIFFERENCE = 11;
    var EXCLUSION = 12;
    var HUE = 13;
    var SATURATION = 14;
    var COLOR = 15;
    var LUMINOSITY = 16;
    var NORMAL_NPM = 17;
    var ADD_NPM = 18;
    var SCREEN_NPM = 19;
    var NONE = 20;
    var SRC_IN = 21;
    var SRC_OUT = 22;
    var SRC_ATOP = 23;
    var DST_OVER = 24;
    var DST_IN = 25;
    var DST_OUT = 26;
    var DST_ATOP = 27;
    var SUBTRACT = 28;
    var SRC_OVER = 0;
    var ERASE = 26;
    var XOR = 29;
}