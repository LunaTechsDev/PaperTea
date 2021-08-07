package pm.eventcommand;

;
@:jsRequire("./Content/Datas/Scripts/System/EventCommand/index", "Script") extern class Script extends Base {
  function new(command: Array<Dynamic>);
  var isDynamic: Bool;
  var script: Dynamic;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: Script;
}
