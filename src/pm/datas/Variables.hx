package pm.datas;

/**
 * @class
 * All the variable data.
 * @static
 */
@:native('Variables')
@:js.import('../../System/Datas/Variables.js')
extern class Variables {
  function new();
  static var prototype: Variables;
  static var VARIABLES_PER_PAGE: Float;
  static var variablesNumbers: Float;
  static var variablesNames: Array<String>;

  /**
    Read the JSON file associated to variables.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the variable name by ID.
  **/
  static function get(id: Float): String;
}
