package pm.eventcommand;

import pm.system.MapObject;
import pm.system.DynamicValue;

/** @class
 *  An event command for displaying a picture.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('DisplayAPicture')
@:js.import('../../System/EventCommand/DisplayAPicture.js')
extern class DisplayAPicture extends Base {
  function new(command: Array<Dynamic>);
  var pictureID: DynamicValue;
  var index: Dynamic;
  var centered: Bool;
  var originX: Float;
  var originY: Float;
  var x: DynamicValue;
  var y: DynamicValue;
  var zoom: DynamicValue;
  var opacity: DynamicValue;
  var angle: DynamicValue;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: DisplayAPicture;
}
