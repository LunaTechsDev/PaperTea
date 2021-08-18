package pm.datas;

/**
 * @class
 * Abstract base class for all data classes
 * in Paper Maker.
 */
@:native('Base')
@:js.import('../../System/Datas/Base.js')
extern class Base {
  function new();
  static var prototype: Base;
  static final STRING_ERROR_GET_1: String;
  static final STRING_ERROR_GET_2: String;

  /**
    Get an element in a list by ID safely.
  **/
  static function get<T>(id: Float, list: Array<T>, name: String, ?isID: Bool, ?errorMessage: String): T;
}
