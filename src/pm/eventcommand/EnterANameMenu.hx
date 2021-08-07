package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;

/** @class
 *  An event command for entering a name menu.
 *  @extends EventCommand.Base
 *  @param {Object} command - Direct JSON command to parse
 */
@:native('EnterANameMenu')
@:js.import('../../System/EventCommand/EnterANameMenu.js')
extern class EnterANameMenu extends Base {
  function new(command: Array<Dynamic>);
  var heroInstanceID: DynamicValue;
  var maxCharacters: DynamicValue;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: EnterANameMenu;
}
