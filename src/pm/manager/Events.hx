package pm.manager;

import pm.system.MapObject;
import pm.system.DynamicValue;

/** @class
 *  A static class for some events functions.
 *  @static
 */
@:native('Events')
@:js.import('../../System/Manager/Events.js')
extern class Events {
  function new();
  static var prototype: Events;

  /**
    Get the event command and read json.
  **/
  static function getEventCommand(json: {}): Dynamic;

  /**
    Send an event.
  **/
  static function sendEvent(sender: MapObject, targetKind: Float, targetID: Float, isSystem: Bool, eventID: Float,
    parameters: Array<DynamicValue>, senderNoReceiver: Bool, onlyTheClosest: Bool): Void;

  /**
    Send an event detection
  **/
  static function sendEventDetection(sender: MapObject, targetID: Float, isSystem: Bool, eventID: Float,
    parameters: Array<Dynamic>, ?senderNoReceiver: Bool, ?onlyTheClosest: Bool): Void;

  /**
    Send an event to objects.
  **/
  static function sendEventObjects(objects: Array<MapObject>, sender: MapObject, targetID: Float, isSystem: Bool,
    eventID: Float, parameters: Array<Dynamic>, senderNoReceiver: Bool, onlyTheClosest: Bool,
    closests: Array<Array<Dynamic>>): Void;
}
