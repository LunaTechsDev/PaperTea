package pm.eventcommand;

;
@:jsRequire("./Content/Datas/Scripts/System/EventCommand/index",
  "SetMoveTurnAPicture") extern class SetMoveTurnAPicture extends Base {
  function new(command: Array<Dynamic>);
  var index: Dynamic;
  var pictureID: Dynamic;
  var zoom: Dynamic;
  var opacity: Dynamic;
  var x: Dynamic;
  var y: Dynamic;
  var angle: Dynamic;
  var time: Dynamic;
  var waitEnd: Bool;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: SetMoveTurnAPicture;
}
