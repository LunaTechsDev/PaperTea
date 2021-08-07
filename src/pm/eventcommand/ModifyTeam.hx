package pm.eventcommand;

import pm.system.MapObject;
import pm.core.Enums.CharacterKind;
import pm.core.Enums.GroupKind;
import pm.system.DynamicValue;

/** @class
 *  An event command for modifying team.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('ModifyTeam')
@:js.import('../../System/EventCommand/ModifyTeam.js')
extern class ModifyTeam extends Base {
  function new(command: Array<Dynamic>);
  var kind: Float;
  var instanceLevel: DynamicValue;
  var instanceTeam: GroupKind;
  var stockVariableID: DynamicValue;
  var instanceKind: CharacterKind;
  var instanceID: DynamicValue;
  var enemyInstanceID: DynamicValue;
  var enemyTeam: GroupKind;
  var modifyKind: Float;
  var modifyInstanceID: DynamicValue;
  var modifyTeam: GroupKind;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ModifyTeam;
}
