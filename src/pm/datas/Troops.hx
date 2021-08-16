package pm.datas;

/**
 * @class
 * All troop data.
 * @static
 */
@:native('Troops')
@:js.import('../../System/Datas/Troops.js')
extern class Troops {
  function new();
  static var prototype: Troops;
  private static var list: Array<pm.system.Troop>;

  /**
    Read the JSON file associated to troops
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the troop by ID.
  **/
  static function get(id: Float): pm.system.Troop;
}
