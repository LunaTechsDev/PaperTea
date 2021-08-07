package pm.eventcommand;

;
@:jsRequire("./Content/Datas/Scripts/System/EventCommand/index",
  "StopReaction") extern class StopReaction extends Base {
  function new(command: Array<Dynamic>);

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: StopReaction;
}
