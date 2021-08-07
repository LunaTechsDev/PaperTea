package pm.eventcommand;

;
@:jsRequire("./Content/Datas/Scripts/System/EventCommand/index",
  "RemoveAPicture") extern class RemoveAPicture extends Base {
  function new(command: Array<Dynamic>);
  var index: Dynamic;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: RemoveAPicture;
}
