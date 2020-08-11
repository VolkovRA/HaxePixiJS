package;

import pixi.Pixi;
import pixi.events.EventEmitter;

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
    }
}