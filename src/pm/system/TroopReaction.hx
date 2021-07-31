package pm.system;

import pm.core.Enums.TroopReactionFrequencyKind;

/** @class
 *  A troop reaction conditions of the game.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  troop reaction conditions
 */
extern class TroopReaction extends Reaction {
  function new(?json: {});
  var id: Float;
  var conditions: Dynamic;
  var frequency: TroopReactionFrequencyKind;
  static var prototype: TroopReaction;
}
