package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;

/** @class
 *  An event command for changing a hero name.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('ChangeName')
@:js.import('../../System/EventCommand/ChangeName.js')
extern class ChangeName extends Base {
  function new(command: Array<Dynamic>);
  var name: DynamicValue;
  var selection: Float;
  var heInstanceID: DynamicValue;
  var groupIndex: Float;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeName;
}
