package pm.datas;

import pm.system.Class;

/**
 * @class
 * All of the class data.
 * @static
 */
@:native('Classes')
@:js.import('../../System/Datas/Classes.js')
extern class Classes {
  function new();
  static var prototype: Classes;
  private static var list: Array<pm.system.Class>;

  /**
    Read the JSON file associated to classes
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the class by ID.
  **/
  static function get(id: Float, ?errorMessage: String): pm.system.Class;
}
