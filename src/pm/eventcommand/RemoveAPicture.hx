package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;

/** @class
 *  An event command for removing a picture.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('RemoveAPicture')
@:js.import('../../System/EventCommand/RemoveAPicture.js')
extern class RemoveAPicture extends Base {
  function new(command: Array<Dynamic>);
  var index: DynamicValue;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: RemoveAPicture;
}
