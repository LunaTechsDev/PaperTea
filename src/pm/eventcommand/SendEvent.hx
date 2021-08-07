package pm.eventcommand;

;
@:jsRequire("./Content/Datas/Scripts/System/EventCommand/index", "SendEvent") extern class SendEvent extends Base {
  function new(command: Array<Dynamic>);
  var targetKind: Float;
  var senderNoReceiver: Bool;
  var onlyTheClosest: Bool;
  var targetID: Dynamic;
  var isSystem: Bool;
  var eventID: Float;
  var parameters: Array<Dynamic>;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: SendEvent;
}
