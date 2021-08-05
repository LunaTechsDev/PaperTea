package pm.eventcommand;

import pm.system.MapObject;
import pm.system.DynamicValue;

/** @class
 *  An event command for changing a skill.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('ChangeASkill')
@:js.import('../../System/EventCommand/ChangeASkill.js')
extern class ChangeASkill extends Base {
  function new(command: Array<Dynamic>);
  var skillID: DynamicValue;
  var selection: Float;
  var heInstanceID: DynamicValue;
  var groupIndex: Float;
  var operation: Float;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeASkill;
}
