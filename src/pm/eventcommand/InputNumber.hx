package pm.eventcommand;

import pm.system.MapObject;
import pm.system.DynamicValue;

/** @class
 *  An event command for entering a number inside a variable.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('InputNumber')
@:js.import('../../System/EventCommand/InputNumber.js')
extern class InputNumber extends Base {
  function new(command: Array<Dynamic>);
  var stockVariableID: DynamicValue;
  var digits: DynamicValue;
  var showText: DynamicValue;

  /**
    Set the show text property.
  **/
  function setShowText(showText: ShowText): Void;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  /**
    First key press handle for the current stack.
  **/
  function onKeyPressed(currentState: {}, key: Float): Void;

  /**
    Key pressed repeat handle for the current stack, but with
    a small wait after the first pressure (generally used for menus).
  **/
  function onKeyPressedAndRepeat(currentState: {}, key: Float): Bool;

  /**
    Draw the HUD.
  **/
  function drawHUD(currentState: {}): Void;

  static var prototype: InputNumber;
}
