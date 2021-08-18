package pm.datas;

import pm.system.Event;
import pm.system.CommonReaction;
import pm.system.MapObject;

@:native('CommonEvents')
@:js.import('../../System/Datas/CommonEvents.js')
extern class CommonEvents {
  function new();
  static var prototype: CommonEvents;
  static var PROPERTY_STOCKED: String;
  private static var eventsSystem: Array<Event>;
  private static var eventsUser: Array<Event>;
  private static var commonReactions: Array<CommonReaction>;
  private static var commonObjects: Array<MapObject>;

  /**
    Read the JSON file associated to common events.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Reorder the models in the right order for inheritance.
  **/
  static function modelReOrder(jsonObject: {}, reorderedList: Array<{}>, jsonObjects: Array<{}>,
    objectsLength: Float): Void;

  /**
    Get the event system by ID.
  **/
  static function getEventSystem(id: Float): Event;

  /**
    Get the event user by ID.
  **/
  static function getEventUser(id: Float): Event;

  /**
    Get the common reaction by ID.
  **/
  static function getCommonReaction(id: Float): CommonReaction;

  /**
    Get the common object by ID.
  **/
  static function getCommonObject(id: Float): MapObject;
}
