package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;

/** @class
 *  An event command for removing a specific object from map.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('RemoveObjectFromMap')
@:js.import('../../System/EventCommand/RemoveObjectFromMap.js')
extern class RemoveObjectFromMap extends Base {
  function new(command: Array<Dynamic>);
  var objectID: DynamicValue;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: RemoveObjectFromMap;
}
