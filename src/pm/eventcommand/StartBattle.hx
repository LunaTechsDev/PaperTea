package pm.eventcommand;

import pm.system.MapObject;
import pm.system.DynamicValue;

/** @class
 *  An event command for battle processing.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('StartBattle')
@:js.import('../../System/EventCommand/StartBattle.js')
extern class StartBattle extends Base {
  function new(command: Array<Dynamic>);
  var battleMapID: DynamicValue;
  var mapID: DynamicValue;
  var x: DynamicValue;
  var y: DynamicValue;
  var yPlus: DynamicValue;
  var z: DynamicValue;
  var canEscape: Bool;
  var canGameOver: Bool;
  var troopID: DynamicValue;
  var transitionStart: Float;
  var transitionStartColor: DynamicValue;
  var transitionEnd: Float;
  var transitionEndColor: DynamicValue;
  var battleMapType: Float;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: StartBattle;
}
