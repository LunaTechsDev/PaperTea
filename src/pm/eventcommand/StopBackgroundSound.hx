package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for stopping the background sound.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('StopBackgroundSound')
@:js.import('../../System/EventCommand/StopBackgroundSound.js')
extern class StopBackgroundSound extends Base {
  function new(command: Array<Dynamic>);

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: StopBackgroundSound;
}
