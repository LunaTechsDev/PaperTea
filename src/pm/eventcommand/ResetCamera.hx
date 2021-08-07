package pm.eventcommand;

;
@:jsRequire("./Content/Datas/Scripts/System/EventCommand/index", "ResetCamera") extern class ResetCamera extends Base {
  function new(command: Array<Dynamic>);

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ResetCamera;
}
