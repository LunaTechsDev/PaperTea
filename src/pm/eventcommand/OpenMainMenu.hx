package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for opening the main menu.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('OpenMainMenu')
@:js.import('../../System/EventCommand/OpenMainMenu.js')
extern class OpenMainMenu extends Base {
  function new(command: Array<Dynamic>);

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: OpenMainMenu;
}
