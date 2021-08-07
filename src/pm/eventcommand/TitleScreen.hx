package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for going to title screen.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('TitleScreen')
@:js.import('../../System/EventCommand/TitleScreen.js')
extern class TitleScreen extends Base {
  function new(command: Array<Dynamic>);

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: TitleScreen;
}
