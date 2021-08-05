package pm.eventcommand;

import pm.system.MapObject;
import pm.core.Enums.GroupKind;

/** @class
 *  An event command for changing the class of a hero 
 *  @extends EventCommand.Base
 *  @param {Object} command - Direct JSON command to parse
 */
@:native('ChangeClass')
@:js.import('../../System/Base/ChangeClass.js')
extern class ChangeClass extends Base {
  function new(command: Array<Dynamic>);
  var classID: Dynamic;
  var selectionKind: Float;
  var selectionHeroEnemyInstanceID: Dynamic;
  var selectionTeam: GroupKind;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeClass;
}
