package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;

/** @class
 *  An event command for sending an event.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('Script')
@:js.import('../../System/EventCommand/Script.js')
extern class Script extends Base {
  function new(command: Array<Dynamic>);
  var isDynamic: Bool;
  var script: DynamicValue;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: Script;
}
