package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for jumping to a label node.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('JumpToLabel')
@:js.import('../../System/EventCommand/JumpToLabel.js')
extern class JumpToLabel extends Base {
  function new(command: Array<Dynamic>);
  var label: Dynamic;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: JumpToLabel;
}
