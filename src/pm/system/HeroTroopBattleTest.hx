package pm.system;

import pm.core.Player;

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
