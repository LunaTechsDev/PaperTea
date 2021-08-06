package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;

/** @class
 *  An event command for changing screen tone.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('ChangeScreenTone')
@:js.import('../../System/EventCommand/ChangeScreenTone.js')
extern class ChangeScreenTone extends Base {
  function new(command: Array<Dynamic>);
  var r: DynamicValue;
  var g: DynamicValue;
  var b: DynamicValue;
  var grey: DynamicValue;
  var subColor: Bool;
  var colorID: DynamicValue;
  var waitEnd: Bool;
  var time: DynamicValue;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeScreenTone;
}
