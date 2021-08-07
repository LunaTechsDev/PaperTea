package pm.eventcommand;

;
@:jsRequire("./Content/Datas/Scripts/System/EventCommand/index", "While") extern class While extends Base {
  function new(command: Array<Dynamic>);

  /**
    Update and check if the event is finished
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  /**
    Get the number of nodes to pass.
  **/
  function goToNextCommand(): Float;

  static var prototype: While;
}
