package pm.system;

import pm.core.Enums.OperationKind;
import pm.core.Enums.ConditionHeroesKind;

@:native('TroopReactionConditions')
@:js.import('../../System/System/TroopReactionConditions.js')
extern class TroopReactionConditions extends Base {
  function new(?json: {});
  var isNumberOfTurn: Bool;
  var numberOfTurnPlus: Dynamic;
  var numberOfTurnTimes: Dynamic;
  var isHeroesMonsters: Bool;
  var isHeroes: Bool;
  var conditionHeroesKind: ConditionHeroesKind;
  var heroInstanceID: Dynamic;
  var isStatusID: Bool;
  var statusID: Dynamic;
  var isStatisticID: Bool;
  var statisticID: Dynamic;
  var statisticOperationKind: OperationKind;
  var statisticCompare: Dynamic;
  var statisticCompareUnit: Bool;

  /**
    Check if conditions are valid.
  **/
  function isValid(): Bool;

  static var prototype: TroopReactionConditions;
}
