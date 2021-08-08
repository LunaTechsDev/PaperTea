package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for reseting the camera.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('ResetCamera')
@:js.import('../../System/EventCommand/ResetCamera.js')
extern class ResetCamera extends Base {
  function new(command: Array<Dynamic>);

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ResetCamera;
}
