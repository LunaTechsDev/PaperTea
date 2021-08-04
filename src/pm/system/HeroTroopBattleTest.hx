package pm.system;

import pm.core.Player;

/** @class
 *  An hero troop battle test.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  hero
 */
@:native('HeroTroopBattleTest')
@:js.import('../../System/System/HeroTroopBattleTest.js')
extern class HeroTroopBattleTest extends Base {
  function new(?json: {});
  var heroID: Float;
  var level: Float;
  var equipments: Array<Dynamic>;

  /**
    Equip the equipments to a player.
  **/
  function equip(player: Player): Void;

  static var prototype: HeroTroopBattleTest;
}
