package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for ending the game.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('EndGame')
@:js.import('../../System/EventCommand/EndGame.js')
extern class EndGame extends Base {
  function new(command: Array<Dynamic>);

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: EndGame;
}
