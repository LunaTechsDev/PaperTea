package pm.system;

/** @class
 *  An object in the map.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  object
 */
extern class MapObject extends Base {
  function new(?json: {});
  var id: Float;
  var name: String;
  var isEventFrame: Bool;
  var canBeTriggeredAnotherObject: Bool;
  var states: Array<Dynamic>;
  var properties: Array<Dynamic>;
  var events: {};
  var timeEvents: Array<Dynamic>;

  /**
    Add default values.
  **/
  function addDefaultValues(): Void;

  /**
    Add inheritance values according to a model ID.
  **/
  function addInheritanceModel(modelID: Float): Void;

  /**
    Get all the time events.
  **/
  function getTimeEvents(): Array<Dynamic>;

  /**
    Get the reactions corresponding to a given event and parameters.
  **/
  function getReactions(isSystem: Bool, idEvent: Float, state: Float, parameters: Array<Dynamic>): Array<Dynamic>;

  static var prototype: MapObject;

  /**
    Create a system map object from a model ID.
  **/
  static function createFromModelID(modelID: Float, id: Float): MapObject;
}
