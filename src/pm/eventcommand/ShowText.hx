package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;
import pm.core.WindowBox;

/** @class
 *  An event command for displaying text.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('ShowText')
@:js.import('../../System/EventCommand/ShowText.js')
extern class ShowText extends Base {
  function new(command: Array<Dynamic>);
  var interlocutor: DynamicValue;
  var facesetID: Float;
  var message: String;
  var windowMain: WindowBox;
  var windowInterlocutor: WindowBox;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  /**
    First key press handle for the current stack
  **/
  function onKeyPressed(currentState: {}, key: Float): Void;

  /**
    Draw the HUD
  **/
  function drawHUD(?currentState: {}): Void;

  static var prototype: ShowText;
}
