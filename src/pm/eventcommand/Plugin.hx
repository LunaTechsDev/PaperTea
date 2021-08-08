package pm.eventcommand;

import pm.system.MapObject;
import pm.system.DynamicValue;

@:native('Plugin')
@:js.import('../../System/EventCommand/Plugin.js')
extern class Plugin extends Base {
  function new(command: Array<Dynamic>);
  var pluginID: Float;
  var commandID: Float;
  var parameters: Array<DynamicValue>;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: Plugin;
}
