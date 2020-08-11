package pixi.geom;

/**
 * Interface for classes that represent a hit area.
 * 
 * It is implemented by the following classes:
 * - Rectangle
 * - Circle
 * - Ellipse
 * - Polygon
 * - RoundedRectangle
 * 
 * @see https://pixijs.download/dev/docs/PIXI.IHitArea.html
 */
@:native("PIXI.IHitArea")
extern interface IHitArea
{
    /**
     * Checks whether the x and y coordinates given are contained within this area.
     * @param x The X coordinate of the point to test.
     * @param y The Y coordinate of the point to test.
     * @return Whether the x/y coordinates are within this area.
     */
    public function contains(x:Float, y:Float):Bool;
}