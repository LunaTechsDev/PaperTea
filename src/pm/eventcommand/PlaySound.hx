package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for playing a backgroundsound.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('PlaySound')
@:js.import('../../System/EventCommand/PlaySound.js')
extern class PlaySound extends Base {
  function new(command: Array<Dynamic>);
  var song: Dynamic;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: PlaySound;
}
