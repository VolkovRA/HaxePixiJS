package pixi.enums;

/**
 * Represents the update priorities used by internal PIXI classes when
 * registered with the `Ticker` object. Higher priority items are updated
 * first and lower priority items, such as render, should go later.
 * ***
 * Library: **core**  
 *   
 * *This enum duplicate values from: `Pixi.UPDATE_PRIORITY ` for more convenience.*
 */
enum abstract UpdatePriority(Float) to Float from Float
{
    /**
     * Highest priority, used for `InteractionManager`.
     */
    var INTERACTION = 50;

    /**
     * High priority updating, `VideoBaseTexture` and `AnimatedSprite`.
     */
    var HIGH = 25;

    /**
     * Default priority for ticker events, see `Ticker.add`.
     */
    var NORMAL = 0;

    /**
     * Low priority used for `Application` rendering.
     */
    var LOW = -25;

    /**
     * Lowest priority used for `BasePrepare` utility.
     */
    var UTILITY = -50;
}