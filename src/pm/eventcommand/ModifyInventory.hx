package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;

/** @class
 *  An event command for modifying the inventory.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('ModifyInventory')
@:js.import('../../System/EventCommand/ModifyInventory.js')
extern class ModifyInventory extends Base {
  function new(command: Array<Dynamic>);
  var itemKind: Float;
  var itemID: DynamicValue;
  var operation: Float;
  var value: DynamicValue;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ModifyInventory;
}
