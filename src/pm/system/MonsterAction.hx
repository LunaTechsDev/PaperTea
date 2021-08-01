package pm.system;

/** @class
 *  A monster action of the game.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  monster action
 */
@:native('MonsterAction')
@:js.import('../../System/System/MonsterAction.js')
extern class MonsterAction extends Base {
  function new(?json: {});
  var actionKind: Float;
  var skillID: DynamicValue;
  var itemID: DynamicValue;
  var itemNumberMax: DynamicValue;
  var priority: DynamicValue;
  var targetKind: Float;
  var isConditionTurn: Bool;
  var operationKindTurn: Float;
  var turnValueCompare: DynamicValue;
  var isConditionStatistic: Bool;
  var statisticID: DynamicValue;
  var operationKindStatistic: Float;
  var statisticValueCompare: DynamicValue;
  var isConditionVariable: Bool;
  var variableID: Float;
  var operationKindVariable: Float;
  var variableValueCompare: DynamicValue;
  var isConditionStatus: Bool;
  var statusID: DynamicValue;
  var isConditionScript: Bool;
  var script: DynamicValue;
  var monster: Monster;
  static var prototype: MonsterAction;
}
