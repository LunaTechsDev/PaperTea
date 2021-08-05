package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;

/** @class
 *  An event command for changing chronometer.
 *  @extends EventCommand.Base
 *  @param {Object} command - Direct JSON command to parse
 */
@:native('ChangeCronometer')
@:js.import('../../System/EventCommand/ChangeChronometer.js')
extern class ChangeChronometer extends Base {
  function new(command: Array<Dynamic>);
  var chronometerID: DynamicValue;
  var operation: Float;
  var time: DynamicValue;
  var diplayOnScreen: Bool;
  var stockValue: Bool;
  var stockID: DynamicValue;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeChronometer;
}
