package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;

/** @class
 *  An event command for changing a property value.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('ChangeProperty')
@:js.import('../../System/EventCommand/ChangeProperty.js')
extern class ChangeProperty extends Base {
  function new(command: Array<Dynamic>);
  var propertyID: DynamicValue;
  var operationKind: Float;
  var newValue: DynamicValue;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeProperty;
}
