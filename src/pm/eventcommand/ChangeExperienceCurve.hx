package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;
import pm.core.Enums.GroupKind;

/** @class
 *  An event command for changing experience curve of one or several hero.
 *  @extends EventCommand.Base
 *  @param {Object} command - Direct JSON command to parse
 */
@:native('ChangeExperienceCurve')
@:js.import('../../System/EventCommand/ChangeExperienceCurve.js')
extern class ChangeExperienceCurve extends Base {
  function new(command: Array<Dynamic>);
  var selectionKind: Float;
  var selectionHeroEnemyInstanceID: DynamicValue;
  var selectionTeam: GroupKind;
  var levelRange: DynamicValue;
  var levelRangeTo: DynamicValue;
  var operation: Float;
  var totalExperience: DynamicValue;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeExperienceCurve;
}
