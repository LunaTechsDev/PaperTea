package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for changing battle music.
 *  @extends EventCommand.Base
 */
@:native('ChangeBattleMusic')
@:js.import('../../System/EventCommand/ChangeBattleMusic.js')
extern class ChangeBattleMusic extends Base {
  function new(command: Array<Dynamic>);
  var song: Dynamic;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeBattleMusic;
}
