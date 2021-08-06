package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command representing one of the choices.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('Choice')
@:js.import('../../System/EventCommand/Choice.js')
extern class Choice extends Base {
  function new(command: Array<Dynamic>);
  var index: Float;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  /**
    Returns the number of node to pass.
  **/
  function goToNextCommand(): Float;

  static var prototype: Choice;
}
