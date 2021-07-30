package pm.datas;

import pm.system.Monster;
import js.lib.Promise;

/**
 * This class handles the monster data
 */
@:native('Monsters')
extern class Monsters {
  static var list: Array<Monster>; // System Monster

  /** 
   *  Read the JSON file associated to monsters.
   *  @static
   *  @async
   */
  static function read(): Promise<Void>;

  /** 
   *  Get the monster by ID.
   *  @static
   *  @param {number} id
   *  @returns {System.Monster}
   */
  static function get(id: Int): Monster;
}
