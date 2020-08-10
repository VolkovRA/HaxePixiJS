package pixi.sound.filters;

import js.html.audio.AudioNode;

/**
 * Represents a single sound element. Can be used to play, pause, etc. sound instances.
 * 
 * @see Documentation: https://pixijs.io/pixi-sound/docs/PIXI.sound.filters.Filter.html
 * @see Source code: https://github.com/pixijs/pixi-sound/blob/main/src/filters/Filter.ts
 */
 @:native("PIXI.sound.filters.Filter")
extern class Filter
{
    public function new(destination:AudioNode, ?source:AudioNode);



    //////////////////
    //   СВОЙСТВА   //
    //////////////////

    /**
     * The node to connect for the filter to the previous filter.
     */
    public var destination:AudioNode;

    /**
     * The node to connect for the filter to the previous filter.
     */
    public var source:AudioNode;



    ////////////////
    //   МЕТОДЫ   //
    ////////////////

    /**
     * Connect to the destination.
     * @param destination The destination node to connect the output to.
     */
    public function connect(destination:AudioNode):Void;

    /**
     * Destroy the filter and don't use after this.
     */
    public function destroy():Void;

    /**
     * Completely disconnect filter from destination and source nodes.
     */
    public function disconnect():Void;
}