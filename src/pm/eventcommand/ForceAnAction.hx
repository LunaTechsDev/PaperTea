package pm.eventcommand;

import pm.system.MapObject;
import pm.system.DynamicValue;

/** @class
 *  An event command for forcing an action in a battler.
 *  @extends EventCommand.Base
 *  @param {Object} command - Direct JSON command to parse
 */
@:native('ForceAnAction')
@:js.import('../../System/EventCommand/ForceAnAction.js')
extern class ForceAnAction extends Base {
  function new(command: Array<Dynamic>);
  var battlerKind: Float;
  var battlerEnemyIndex: Float;
  var battlerHeroEnemyInstanceID: DynamicValue;
  var actionKind: Float;
  var actionID: DynamicValue;
  var targetKind: Float;
  var targetCustomKind: Float;
  var targetEnemyIndex: Float;
  var targetHeroEnemyInstanceID: DynamicValue;
  var useBattlerTurn: Bool;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ForceAnAction;
}
