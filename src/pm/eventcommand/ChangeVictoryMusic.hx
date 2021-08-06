package pm.eventcommand;

import pm.system.PlaySong;
import pm.system.MapObject;

/** @class
 *  An event command for changing battle music.
 *  @extends EventCommand.Base
 */
@:native('ChangeVictoryMusic')
@:js.import('../../System/EventCommand/ChangeVictoryMusic.js')
extern class ChangeVictoryMusic extends Base {
  function new(command: Array<Dynamic>);
  var song: PlaySong;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeVictoryMusic;
}
