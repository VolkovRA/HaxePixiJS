package pixi.utils;

import haxe.extern.Rest;

/**
 * A Runner is a highly performant and simple alternative to signals.
 * Best used in situations where events are dispatched to many objects
 * at high frequency (say every frame!)
 * 
 * like a signal.. (Type Script)
 * ```
 * import { Runner } from '@pixi/runner';
 * var myObject = {
 *     loaded: new Runner('loaded')
 * }
 * var listener = {
 *     loaded: function(){
 *         // thin
 *     }
 * }
 * myObject.update.add(listener);
 * myObject.loaded.emit();
 * ```
 * 
 * Or for handling calling the same function on many items
 * ```
 * import { Runner } from '@pixi/runner';
 * const myGame = {
 *     update: new Runner('update')
 * }
 * const gameObject = {
 *     update: function(time){
 *         // update my gamey state
 *     }
 * }
 * myGame.update.add(gameObject1);
 * myGame.update.emit(time);
 * ```
 * 
 * @see Documentation: http://pixijs.download/release/docs/PIXI.Runner.html
 * @see Source code: http://pixijs.download/release/docs/packages_runner_src_Runner.js.html
 * ***
 * Library: **core** 
 */
@:native("PIXI.Runner")
extern class Runner 
{
    /**
     * Create a new Runner instance.
     * @param name The function name that will be executed on the listeners added to this Runner.
     */
    public function new(name:String);

    /**
     * `true` if there are no this Runner contains no listeners.
     */
    public var empty(default, null):Bool;

    /**
     * The name of the runner.
     */
    public var name(default, null):String;

    /**
     * Add a listener to the Runner.
     * 
     * Runners do not need to have scope or functions passed to them. All that
     * is required is to pass the listening object and ensure that it has
     * contains a function that has the same name as the name provided to
     * the Runner when it was created.
     * 
     * Eg A listener passed to this Runner will require a 'complete' function.
     * ```
     * import { Runner } from '@pixi/runner';
     * 
     * const complete = new Runner('complete');
     * ```
     * 
     * The scope used will be the object itself.
     * 
     * @param item The object that will be listening.
     */
    public function add(item:Dynamic):Runner;

    /**
     * Remove a single listener from the dispatch queue.
     * @param item The listenr that you would like to remove.
     */
    public function remove(item:Dynamic):Runner;

    /**
     * Remove all listeners from the Runner.
     */
    public function removeAll():Runner;

    /**
     * Check to see if the listener is already in the Runner.
     * @param item The listener that you would like to check.
     */
    public function contains(item:Dynamic):Void;

    /**
     * Remove all references, don't use after this.
     */
    public function destroy():Void;

    /**
     * Dispatch/Broadcast Runner to all listeners added to the queue.
     * @param params Optional parameters to pass to each listener. (Repeatable)
     */
    public function emit(params:Rest<Dynamic>):Runner;

    /**
     * Alias for `emit()`.
     * @param params Optional parameters to pass to each listener. (Repeatable)
     */
    public function dispatch(params:Rest<Dynamic>):Runner;

    /**
     * Alias for `emit()`.
     * @param params Optional parameters to pass to each listener. (Repeatable)
     */
    public function run(params:Rest<Dynamic>):Runner;
}