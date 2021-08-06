package pm.eventcommand;

import pm.system.MapObject;
import pm.system.DynamicValue;

/** @class
 *  An event command for changing status.
 *  @extends EventCommand.Base
 */
@:native('ChangeStatus')
@:js.import('../../System/EventCommand/ChangeStatus.js')
extern class ChangeStatus extends Base {
  function new(command: Array<Dynamic>);
  var selection: Float;
  var heInstanceID: DynamicValue;
  var groupIndex: Float;
  var operation: Float;
  var statusID: DynamicValue;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeStatus;
}
