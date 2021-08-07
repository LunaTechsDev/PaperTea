package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for after a battle winning.
 *  @extends EventCommand
 *  @param {Object} command - Direct JSON command to parse
 */
@:native('IfWin')
@:js.import('../../System/EventCommand/IfWin.js')
extern class IfWin extends Base {
  function new(command: Array<Dynamic>);

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  /**
    Returns the number of node to pass.
  **/
  function goToNextCommand(): Float;

  static var prototype: IfWin;
}
