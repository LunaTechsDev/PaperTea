package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;

@:native('AllowForbidSaves')
@:js.import('../../System/EventCommand/AllowForbidSaves.js')
extern class AllowForbidSaves extends Base {
  function new(command: Array<Dynamic>);
  var allow: DynamicValue;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: AllowForbidSaves;
}
