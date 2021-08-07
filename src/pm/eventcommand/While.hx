package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for loop event command block.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('While')
@:js.import('../../System/EventCommand/While.js')
extern class While extends Base {
  function new(command: Array<Dynamic>);

  /**
    Update and check if the event is finished
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  /**
    Get the number of nodes to pass.
  **/
  function goToNextCommand(): Float;

  static var prototype: While;
}
