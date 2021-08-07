package pm.eventcommand;

import pm.core.Enums.SongKind;
import pm.system.MapObject;

/** @class
 *  An event command for stopping the music.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('StopMusic')
@:js.import('../../System/EventCommand/StopMusic.js')
extern class StopMusic extends Base {
  function new(command: Array<Dynamic>);

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: StopMusic;

  /**
    Parse a stop song command.
  **/
  static function parseStopSong(that: Dynamic, command: Array<Dynamic>): Void;

  /**
    Stop the song.
  **/
  static function stopSong(that: Dynamic, kind: SongKind, time: Float): Float;
}
