package pm.eventcommand;

import pm.system.MapObject;
import pm.system.DynamicValue;

/** @class
 *  An event command for changing a property value.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('ChangeEquipment')
@:js.import('../../System/EventCommand/ChangeEquipment.js')
extern class ChangeEquipment extends Base {
  function new(command: Array<Dynamic>);
  var equipmentID: DynamicValue;
  var isWeapon: Bool;
  var weaponArmorID: DynamicValue;
  var selection: Float;
  var heInstanceID: DynamicValue;
  var groupIndex: Float;
  var isApplyInInventory: Bool;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeEquipment;
}
