package;

import pixi.Pixi;
import pixi.render.State;
import pixi.events.EventEmitter;
import pixi.geom.Point;
import pixi.geom.ObservablePoint;
import pixi.geom.Circle;
import pixi.geom.Rectangle;
import pixi.geom.Ellipse;
import pixi.geom.RoundedRectangle;
import pixi.geom.Polygon;
import pixi.geom.Bounds;
import pixi.geom.Matrix;
import pixi.geom.Transform;
import pixi.filters.Program;
import pixi.filters.Shader;
import pixi.display.BlendMode;

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
        trace(new RoundedRectangle());
        trace(new Polygon([0.0,0.0]));
        trace(new Bounds());
        trace(new Matrix());
        trace(new Transform());
        trace(BlendMode.DARKEN);
        trace(new State());
        //trace(new Program());
        //trace(new Shader());
    }
}