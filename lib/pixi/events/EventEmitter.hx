package pixi.events;

import haxe.Constraints;
import haxe.extern.EitherType;
import haxe.extern.Rest;
import js.lib.Symbol;

/**
 * EventEmitter3 is a high performance EventEmitter.
 * 
 * It has been micro-optimized for various of code paths making this,
 * one of, if not the fastest EventEmitter available for Node.js and
 * browsers. The module is API compatible with the EventEmitter that
 * ships by default with Node.js but there are some slight differences:
 * - Domain support has been removed.
 * - We do not `throw` an error when you emit an `error` event and
 *   nobody is listening.
 * - The `newListener` and `removeListener` events have been removed as
 *   they are useful only in some uncommon use-cases.
 * - The `setMaxListeners`, `getMaxListeners`, `prependListener` and
 *   `prependOnceListener` methods are not available.
 * - Support for custom context for events so there is no need to use
 *   `fn.bind`.
 * - The `removeListener` method removes all matching listeners, not
 *   only the first.
 * 
 * It's a drop in replacement for existing EventEmitters, but just faster.
 * Free performance, who wouldn't want that? The EventEmitter is written
 * in EcmaScript 3 so it will work in the oldest browsers and node versions
 * that you need to support.
 * 
 * @see Documentation: https://github.com/primus/eventemitter3
 * @see Source code: https://github.com/primus/eventemitter3/blob/master/index.d.ts
 * ***
 * Library: **core** 
 */
@:native("PIXI.utils.EventEmitter")
extern class EventEmitter
{
    /**
     * Create a new EventEmitter instance.
     */
    public function new();

    /**
     * Return an array listing the events for which the emitter has registered listeners.
     * @return Array of registered events.
     */
    public function eventNames():Array<EventName>;

    /**
     * Return the listeners registered for a given event.
     * @param event Event name.
     * @return Array of listeners for this event.
     */
    public function listeners(event:EventName):Array<Function>;

    /**
     * Return the number of listeners listening to a given event.
     * @param event Event name.
     * @return Number of listeners for given event.
     */
    public function listenerCount(event:EventName):Int;

    /**
     * Calls each of the listeners registered for a given event.  
     * Synchronously calls each of the listeners registered for the event named `event`,
     * in the order they were registered, passing the supplied arguments to each.  
     * Returns `true` if the event had listeners, `false` otherwise.
     * @param event Event name.
     * @param args The parameters for a listeners.
     * @return Returns `true` if the event had listeners, `false` otherwise.
     */
    public function emit(event:EventName, args:Rest<Dynamic>):Bool;

    /**
     * Add a listener for a given event.
     * @param event Event name.
     * @param listener Callback function.
     * @param context Context of listener calls.
     * @return Returns itself.
     */
    public function on(event:EventName, listener:Function, ?context:Dynamic):EventEmitter;

    /**
     * Add a listener for a given event.
     * @param event Event name.
     * @param listener Callback function.
     * @param context Context of listener calls.
     * @return Returns itself.
     */
    public function addListener(event:EventName, listener:Function, ?context:Dynamic):EventEmitter;

    /**
     * Add a one-time listener for a given event.
     * @param event Event name.
     * @param listener Callback function.
     * @param context Context of listener calls.
     * @return Returns itself.
     */
    public function once(event:EventName, listener:Function, ?context:Dynamic):EventEmitter;

    /**
     * Remove the listeners of a given event.
     * @param event Event name.
     * @param listener Callback function.
     * @param context Context of listener calls.
     * @param once It is a one-time listener.
     * @return Returns itself.
     */
    public function removeListener(event:EventName, ?listener:Function, ?context:Dynamic, ?once:Bool):EventEmitter;

    /**
     * Remove the listeners of a given event.
     * @param event Event name.
     * @param listener Callback function.
     * @param context Context of listener calls.
     * @param once It is a one-time listener.
     * @return Returns itself.
     */
    public function off(event:EventName, ?listener:Function, ?context:Dynamic, ?once:Bool):EventEmitter;

    /**
     * Remove all listeners, or those of the specified event.
     * @param event Event name.
     * @return Returns itself.
     */
    public function removeAllListeners(event:EventName):EventEmitter;
}

/**
 * The a valid type of events names.
 * ***
 * Library: **core** 
 */
typedef EventName = EitherType<String,Symbol>;