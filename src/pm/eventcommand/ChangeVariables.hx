package pm.eventcommand;

import pm.core.Enums.ItemKind;
import pm.system.MapObject;
import pm.system.DynamicValue;

/** @class
 *  An event command for changing variables values.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('ChangeVariables')
@:js.import('../../System/EventCommand/ChangeVariables.js')
extern class ChangeVariables extends Base {
  function new(command: Array<Dynamic>);
  var selection: Float;
  var nbSelection: Float;
  var operation: Float;
  var valueKind: Float;
  var valueNumber: DynamicValue;
  var valueRandomA: DynamicValue;
  var valueRandomB: DynamicValue;
  var valueMessage: DynamicValue;
  var valueSwitch: DynamicValue;
  var valueMapObject: DynamicValue;
  var valueMapObjectChar: Float;
  var valueItemKind: ItemKind;
  var valueItemID: DynamicValue;
  var valueTotalCurrencyKind: Float;
  var valueTotalCurrencyID: DynamicValue;
  var valueHeroEnemyInstanceID: DynamicValue;
  var valueStatisticID: DynamicValue;
  var valueEnemyIndex: Float;
  var valueOtherCharacteristicKind: ChangeVariablesOtherCharacteristics;

  /**
    Initialize the current.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeVariables;
}
