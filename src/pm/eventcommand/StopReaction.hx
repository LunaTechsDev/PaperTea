package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for stopping a reaction.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('StopReaction')
@:js.import('../../System/EventCommand/StopReaction.js')
extern class StopReaction extends Base {
  function new(command: Array<Dynamic>);

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: StopReaction;
}
