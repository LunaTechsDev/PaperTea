package pm.eventcommand;

import pm.core.WindowChoices;
import pm.system.MapObject;

/** @class
 *  An event command for displaying a choice.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('DisplayChoice')
@:js.import('../../System/EventCommand/DisplayChoice.js')
extern class DisplayChoice extends Base {
  function new(command: Array<Dynamic>);
  var cancelAutoIndex: Dynamic;
  var maxNumberChoices: Dynamic;
  var choices: Array<String>;
  var windowChoices: WindowChoices;
  var showText: ShowText;
  var graphics: Array<Dynamic>;
  var maxWidth: Float;

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
    Returns the number of node to pass.
  **/
  function goToNextCommand(): Float;

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
    Draw the HUD
  **/
  function drawHUD(?currentState: {}): Void;

  static var prototype: DisplayChoice;
}
