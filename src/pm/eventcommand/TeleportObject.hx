package pm.eventcommand;

;
@:jsRequire("./Content/Datas/Scripts/System/EventCommand/index",
  "TeleportObject") extern class TeleportObject extends Base {
  function new(command: Array<Dynamic>);
  var objectID: Dynamic;
  var objectIDPosition: Dynamic;
  var mapID: Dynamic;
  var x: Dynamic;
  var y: Dynamic;
  var yPlus: Dynamic;
  var z: Dynamic;
  var direction: Float;
  var transitionStart: Float;
  var transitionStartColor: Dynamic;
  var transitionEnd: Float;
  var transitionEndColor: Dynamic;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  /**
    Draw the HUD
  **/
  function drawHUD(?currentState: {}): Void;

  static var prototype: TeleportObject;
  static var TRANSITION_DURATION: Float;
}
