package pm.common;

import js.lib.Function;

typedef FormulaObjT = {
  var user: Dynamic;
  var target: Dynamic;
  var damage: Float;
  var thisObject: Dynamic;

  /**
   * Defaults to true
   */
  var ?addReturn: Bool;

  /**
   * Defaults to ""
   */
  var ?additionalName: String;

  /**
   * Dynamic value
   * Default to null
   */
  var ?additionalValue: Dynamic;

  /**
   * Defaults to true.
   */
  var ?defaultValue: Dynamic;
}

/**
 * Interpreter to evaluate formulas or 
 * simple scripts without having to import.
 * Static class
 */
@:native('Interpreter')
extern class Interpreter {
  /**
   * Type of result of the Common class
   */
  static var common: String;

  /**
   * Type of result of the Core class
   */
  static var core: String;

  /**
   * Type of result of the Datas class
   */
  static var datas: String;

  /**
   * Type of EventCommand class.
   */
  static var eventCommand: String;

  /**
   * Type of graphic class.
   */
  static var graphic: String;

  /**
   * Type of the Manager class
   */
  static var manager: String;

  /**
   * Type of the Scene class
   */
  static var scene: String;

  /**
   * Type of the System class
   */
  static var system: String;

  /**
   * Type of the three class/object
   */
  static var three: String;

  /**
   * Type of the howl class/object
   */
  static var howl: String;

  public static function evaluate(formula: String, formulaObj: FormulaObjT): Function;
}
