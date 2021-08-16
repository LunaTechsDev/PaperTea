package pm.datas;

/** @class
 *   All the armor data.
 *   @static
 */
@:native('Armors')
@:js.import('../../System/Datas/Armors.js')
extern class Armors {
  function new();
  static var prototype: Armors;
  private static var list: Array<pm.system.Armor>;

  /**
    Read the JSON file associated to armors.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the armor by ID.
  **/
  static function get(id: Float): Dynamic;
}
