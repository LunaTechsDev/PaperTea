package pm.system;

import pm.core.Item;

/** @class
 *  A loot of the game.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  loot
 */
@:native('Loot')
@:js.import('../../System/System/Loot.js')
extern class Loot extends Base {
  function new(?json: {});
  var kind: Float;
  var lootID: DynamicValue;
  var number: DynamicValue;
  var probability: DynamicValue;
  var initial: DynamicValue;
  @:native('final')
  var final_: DynamicValue;

  /**
    Check if a loot is available at a particular level.
  **/
  function isAvailable(level: Float): Bool; // TODO: Change to a Int

  /**
    Get the current loot at a particular level.
  **/
  function currenLoot(level: Float): Item;

  static var prototype: Loot;
}
