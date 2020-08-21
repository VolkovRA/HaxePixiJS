package pixi.enums;

/**
 * The type of gradient on text.
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.TEXT_GRADIENT` for more convenience.*
 */
enum abstract TextGradient(Int) to Int from Int
{
    /**
     * Vertical gradient.
     */
    var LINEAR_VERTICAL = 0;

    /**
     * Linear gradient.
     */
    var LINEAR_HORIZONTAL = 1;
}