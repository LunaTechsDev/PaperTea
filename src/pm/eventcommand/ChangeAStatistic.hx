package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for changing a skill.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('ChangeAStatistic')
@:js.import('../../System/EventCommand/ChangeAStatistic.js')
extern class ChangeAStatistic extends Base {
  function new(command: Array<Dynamic>);
  var statisticID: Dynamic;
  var selection: Float;
  var heInstanceID: Dynamic;
  var groupIndex: Float;
  var operation: Float;
  var value: Float;
  var vNumber: Dynamic;
  var vFormula: Dynamic;
  var vMax: Bool;
  var canAboveMax: Bool;
  var isApplyToMax: Bool;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeAStatistic;
}
