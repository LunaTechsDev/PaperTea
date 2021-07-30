package pm.system;

/** @class
 *  A troop monster.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  troop monster
 */
extern class TroopMonster extends Base {
  function new(?json: {});
  var id: Float;
  var level: Dynamic;
  var isSpecificPosition: Bool;
  var specificPosition: Dynamic;
  static var prototype: TroopMonster;
}
