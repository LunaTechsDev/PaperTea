package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;

/** @class
 *  An event command for sending an event.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('SendEvent')
@:js.import('../../System/EventCommand/SendEvent.js')
extern class SendEvent extends Base {
  function new(command: Array<Dynamic>);
  var targetKind: Float;
  var senderNoReceiver: Bool;
  var onlyTheClosest: Bool;
  var targetID: DynamicValue;
  var isSystem: Bool;
  var eventID: Float;
  var parameters: Array<DynamicValue>;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: SendEvent;
}
