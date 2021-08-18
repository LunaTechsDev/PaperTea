package pm.datas;

import pm.system.Weapon;

/**
 * @class
 * All of the weapon data.
 * @static
 */
@:native('Weapons')
@:js.import('../../System/Datas/Weapons.js')
extern class Weapons {
  function new();
  static var prototype: Weapons;
  private static var list: Array<Weapon>;

  /**
    Read the JSON file associated to weapons
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the weapon by ID.
  **/
  static function get(id: Float): Weapon;
}
