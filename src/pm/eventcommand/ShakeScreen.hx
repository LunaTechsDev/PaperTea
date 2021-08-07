package pm.eventcommand;

;
@:jsRequire("./Content/Datas/Scripts/System/EventCommand/index", "ShakeScreen") extern class ShakeScreen extends Base {
  function new(command: Array<Dynamic>);
  var offset: Dynamic;
  var shakeNumber: Dynamic;
  var isWaitEnd: Bool;
  var time: Dynamic;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ShakeScreen;

  /**
    Update the target offset
  **/
  static function updateTargetOffset(currentState: {}, timeRate: Float): Void;
}
