package pm.system;

/** @class
 *  A troop of the game.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  troop
 */
@:native('Troop')
@:js.import('../../System/System/Troop.js')
extern class Troop extends Base {
  function new(?json: {});
  var list: Array<pm.system.TroopMonster>;
  var reactions: Array<pm.system.TroopReaction>;
  static var prototype: Troop;
}
