package pm.eventcommand;

import pm.core.Enums.Orientation;
import pm.system.MapObject;
import pm.system.DynamicValue;

/** @class
 *  An event command for condition event command block.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('If')
@:js.import('../../System/EventCommand/If.js')
extern class If extends Base {
  function new(command: Array<Dynamic>);
  var hasElse: Bool;
  var kind: Float;
  var variableParamProp: DynamicValue;
  var variableParamPropOperationKind: Float;
  var variableParamPropValue: DynamicValue;
  var heroesSelection: Float;
  var heroInstanceID: DynamicValue;
  var heroesInTeam: Bool;
  var heroesInTeamSelection: Float;
  var heroesKind: Float;
  var heroesNamed: DynamicValue;
  var heroesInTeamValue: Float;
  var heroesSkillID: DynamicValue;
  var heroesEquipedKind: Float;
  var heroesEquipedWeaponID: DynamicValue;
  var heroesEquipedArmorID: DynamicValue;
  var heroesStatusID: DynamicValue;
  var heroesStatisticID: DynamicValue;
  var heroesStatisticOperation: Float;
  var heroesStatisticValue: DynamicValue;
  var currencyID: DynamicValue;
  var operationCurrency: Float;
  var currencyValue: Dynamic;
  var itemID: DynamicValue;
  var operationItem: Float;
  var itemValue: DynamicValue;
  var weaponID: DynamicValue;
  var operationWeapon: Float;
  var weaponValue: DynamicValue;
  var weaponEquiped: Bool;
  var armorID: DynamicValue;
  var operationArmor: Float;
  var armorValue: DynamicValue;
  var armorEquiped: Bool;
  var keyID: DynamicValue;
  var keyValue: DynamicValue;
  var objectIDLookingAt: DynamicValue;
  var orientationLookingAt: Orientation;
  var chronometerID: DynamicValue;
  var chronometerOperation: Float;
  var chronometerSeconds: DynamicValue;
  var script: DynamicValue;

  /**
    Get the hero instance ID.
  **/
  function getHeroInstanceID(): Float;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  /**
    Returns the number of node to pass.
  **/
  function goToNextCommand(): Float;

  static var prototype: If;
}
