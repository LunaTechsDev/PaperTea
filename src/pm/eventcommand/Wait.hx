package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;

/** @class
 *  An event command for displaying text.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('Wait')
@:js.import('../../System/EventCommand/Wait.js')
extern class Wait extends Base {
  function new(command: Array<Dynamic>);
  var milliseconds: DynamicValue;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: Wait;
}
