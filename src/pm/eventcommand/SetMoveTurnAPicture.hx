package pm.eventcommand;

import pm.system.MapObject;
import pm.system.DynamicValue;

/** @class
 *  An event command for setting / moving / turning a picture.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('SetMoveTurnAPicture')
@:js.import('../../System/EventCommand/SetMoveTurnAPicture.js')
extern class SetMoveTurnAPicture extends Base {
  function new(command: Array<Dynamic>);
  var index: DynamicValue;
  var pictureID: DynamicValue;
  var zoom: DynamicValue;
  var opacity: DynamicValue;
  var x: DynamicValue;
  var y: DynamicValue;
  var angle: DynamicValue;
  var time: DynamicValue;
  var waitEnd: Bool;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: SetMoveTurnAPicture;
}
