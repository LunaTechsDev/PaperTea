package pm.eventcommand;

import pm.system.PlaySong;
import pm.system.MapObject;

@:native('PlayMusic')
@:js.import('../../System/EventCommand/PlayMusic.js')
extern class PlayMusic extends Base {
  function new(command: Array<Dynamic>);
  var song: PlaySong;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: PlayMusic;
}
