package pm.eventcommand;

;
@:jsRequire("./Content/Datas/Scripts/System/EventCommand/index", "Plugin") extern class Plugin extends Base {
  function new(command: Array<Dynamic>);
  var pluginID: Float;
  var commandID: Float;
  var parameters: Array<Dynamic>;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: Plugin;
}
