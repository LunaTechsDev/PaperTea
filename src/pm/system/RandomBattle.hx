package pm.system;

/** @class
 *  A random battle of the game.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the
 *  random battle
 */
@:native('RandomBattle')
@:js.import('../../System/System/RandomBattle.js')
extern class RandomBattle extends Base {
  function new(?json: {});
  var troopID: DynamicValue;
  var priority: DynamicValue;
  var isEntireMap: Bool;
  var currentPriority: Float;

  /**
    Update the current priority value.
  **/
  function updateCurrentPriority(): Void;

  static var prototype: RandomBattle;
}
