package pm.system;

/** @class
 *  A key shortcut of the game.
 *  @extends {System.Translatable}
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  keyboard
 */
@:native('Keyboard')
@:js.import('../../System/System/Keyboard.js')
extern class Keyboard extends Translatable {
  function new(?json: {});
  var id: Float;
  var sc: Array<Array<Float>>;

  /**
    Get the string representation of the keyboard.
  **/
  function toString(): String;

  static var prototype: Keyboard;
}
