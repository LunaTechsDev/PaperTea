package pm.eventcommand;

@:jsRequire("./Content/Datas/Scripts/System/EventCommand/index", "MoveCamera") extern class MoveCamera extends Base {
  function new(command: Array<Dynamic>);
  var targetID: Dynamic;
  var operation: Float;
  var moveTargetOffset: Bool;
  var cameraOrientation: Bool;
  var x: Dynamic;
  var xSquare: Bool;
  var y: Dynamic;
  var ySquare: Bool;
  var z: Dynamic;
  var zSquare: Bool;
  var rotationTargetOffset: Bool;
  var h: Dynamic;
  var v: Dynamic;
  var distance: Dynamic;
  var isWaitEnd: Bool;
  var time: Dynamic;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: MoveCamera;
}
