package pm.system;

import pm.core.Player;

/** @class
 *  An hero equipment troop battle test.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  equipment
 */
@:native('HeroTroopBattleTestEquipment')
@:js.import('../../System/System/HeroTroopBattleTestEquipment.js')
extern class HeroTroopBattleTestEquipment extends Base {
  function new(?json: {});
  var id: Float;
  var kind: Float;
  var weaponArmorID: Float;

  /**
    Equip the equipments to a player.
  **/
  function equip(player: Player): Void;

  static var prototype: HeroTroopBattleTestEquipment;
}
