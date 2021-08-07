package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for ending the battle.
 *  @extends EventCommand.Base
 */
@:native('EndBattle')
@:js.import('../../System/EventCommand/EndBattle.js')
extern class EndBattle extends Base {
  function new(command: Array<Dynamic>);

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: EndBattle;
}
