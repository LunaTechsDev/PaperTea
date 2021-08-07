package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for after a battle winning.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
extern class IfLose extends Base {
  function new(command: Array<Dynamic>);

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  /**
    Returns the number of node to pass.
  **/
  function goToNextCommand(): Float;

  static var prototype: IfLose;
}
