package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for leaving while event command.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('WhileBreak')
@:js.import('../../System/EventCommand/WhileBreak.js')
extern class WhileBreak extends Base {
  function new(command: Array<Dynamic>);

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: WhileBreak;
}
