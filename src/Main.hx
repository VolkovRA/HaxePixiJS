package;

import pixi.Pixi;
import pixi.events.EventEmitter;
import pixi.geom.Point;
import pixi.geom.ObservablePoint;
import pixi.geom.Circle;
import pixi.geom.Rectangle;
import pixi.geom.Ellipse;

class Main
{
    /**
     * Точка входа.
     */
    public static function main() {
        trace(Pixi.VERSION);
        trace(Pixi.LINE_CAP.SQUARE);

        var ee = new EventEmitter();
        ee.on("Yo!", function(a,b,c){ trace(a,b,c); }).on("Yo!", function(){trace(111);});
        trace(ee.eventNames());
        trace(ee.listeners("Yo!"));
        trace(ee.listenerCount("Yo!"));
        trace(ee.emit("Yo!", "Hi!", 1, 0));

        trace(new Point());
        trace(new ObservablePoint(null, null));
        trace(new Circle());
        trace(new Rectangle());
        trace(new Ellipse());
    }
}