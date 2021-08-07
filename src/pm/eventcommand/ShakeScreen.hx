package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for shaking screen.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('ShakeScreen')
@:js.import('../../System/EventCommand/ShakeScreen.js')
extern class ShakeScreen extends Base {
  function new(command: Array<Dynamic>);
  var offset: Dynamic;
  var shakeNumber: Dynamic;
  var isWaitEnd: Bool;
  var time: Dynamic;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ShakeScreen;

  /**
    Update the target offset
  **/
  static function updateTargetOffset(currentState: {}, timeRate: Float): Void;
}
