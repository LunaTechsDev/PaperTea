package pm.eventcommand;

;
@:jsRequire("./Content/Datas/Scripts/System/EventCommand/index",
  "StartShopMenu") extern class StartShopMenu extends Base {
  function new(command: Array<Dynamic>, ?isRestock: Bool);
  var buyOnly: Dynamic;
  var shopID: Dynamic;
  var items: Array<Dynamic>;
  var isRestock: Bool;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: StartShopMenu;
}
