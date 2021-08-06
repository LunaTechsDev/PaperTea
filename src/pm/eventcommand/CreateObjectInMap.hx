package pm.eventcommand;

import pm.system.MapObject;
import pm.system.DynamicValue;

/** @class
 *  An event command for creating an object in map.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('CreateObjectInMap')
@:js.import('../../System/EventCommand/CreateObjectInMap.js')
extern class CreateObjectInMap extends Base {
  function new(command: Array<Dynamic>);
  var modelID: DynamicValue;
  var objectIDPosition: DynamicValue;
  var mapID: DynamicValue;
  var x: DynamicValue;
  var y: DynamicValue;
  var yPlus: DynamicValue;
  var z: DynamicValue;
  var isStockID: Bool;
  var stockID: DynamicValue;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: CreateObjectInMap;
}
