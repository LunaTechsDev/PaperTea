package pm.eventcommand;

import pm.system.MapObject;
import pm.system.DynamicValue;

/** @class
 *  An event command for displaying an animation
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('DisplayAnAnimation')
@:js.import('../../System/EventCommand/DisplayAnAnimation.js')
extern class DisplayAnAnimation extends Base {
  function new(command: Array<Dynamic>);
  var objectID: DynamicValue;
  var animationID: DynamicValue;
  var isWaitEnd: Bool;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  /**
    Draw the HUD.
  **/
  function drawHUD(currentState: {}): Void;

  static var prototype: DisplayAnAnimation;
}
