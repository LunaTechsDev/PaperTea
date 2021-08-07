package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;

/** @class
 *  An event command for flashing screen.
 *  @extends EventCommand.Base
 *  @param {Object} command - Direct JSON command to parse
 */
@:native('FlashScreen')
@:js.import('../../System/EventCommand/FlashScreen.js')
extern class FlashScreen extends Base {
  function new(command: Array<Dynamic>);
  var colorID: DynamicValue;
  var isWaitEnd: Bool;
  var time: DynamicValue;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  /**
    Draw the HUD
  **/
  function drawHUD(currentState: {}): Void;

  static var prototype: FlashScreen;
}
