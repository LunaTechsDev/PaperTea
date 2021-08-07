package pm.eventcommand;

;
@:jsRequire("./Content/Datas/Scripts/System/EventCommand/index",
  "OpenSavesMenu") extern class OpenSavesMenu extends Base {
  function new(command: Array<Dynamic>);

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: OpenSavesMenu;
}
