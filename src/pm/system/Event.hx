package pm.system;

/** @class
 *  An event that an object can react on.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  object event
 */
@:native('Event')
extern class Event extends Base {
  function new(?json: {});
  var isSystem: Bool;
  var idEvent: Float;
  var parameters: Array<Dynamic>;
  var reactions: {};

  /**
    Check if this event is equal to another.
  **/
  function isEqual(event: Dynamic): Bool;

  /**
    Add reactions to the event.
  **/
  function addReactions(reactions: {}): Void;

  static var prototype: Event;
}
