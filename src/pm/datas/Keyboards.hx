package pm.datas;

/** @class
 *   All the keyboard data.
 *   @static
 */
@:native('Keyboards')
@:js.import('../../System/Datas/Keyboards.js')
extern class Keyboards {
  function new();
  static var prototype: Keyboards;
  private static var list: Array<pm.system.Keyboard>;
  static var listOrdered: Array<pm.system.Keyboard>;

  /**
   * Record<string, any>
   */
  static var menuControls: {};

  /**
   * Record<string, any>
   */
  static var controls: {};

  /**
    Test if a key id can be equal to a keyboard System object.
  **/
  static function isKeyEqual(key: Float, abr: Array<pm.system.Keyboard>): Bool;

  /**
    Read the JSON file associated to keyboard.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the keyboard by ID.
  **/
  static function get(id: Float): pm.system.Keyboard;

  /**
    Get the graphics commands.
  **/
  static function getCommandsGraphics(): Array<pm.graphic.Keyboard>;

  /**
    Get the actions commands.
  **/
  static function getCommandsActions(): Array<haxe.Constraints.Function>;
}
