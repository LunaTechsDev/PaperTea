package pm.system;

import pm.core.Enums.EffectKind;
import pm.core.Enums.DamagesKind;
import pm.core.Enums.EffectSpecialActionKind;

@:nataive('Effect')
extern class Effect extends Base {
  function new(?json: {});
  var kind: EffectKind;
  var damageKind: DamagesKind;
  var damageStatisticID: Dynamic;
  var damageCurrencyID: Dynamic;
  var damageVariableID: Float;
  var damageFormula: Dynamic;
  var isDamagesMinimum: Bool;
  var damagesMinimumFormula: Dynamic;
  var isDamagesMaximum: Bool;
  var damagesMaximumFormula: Dynamic;
  var isDamageElement: Bool;
  var damageElementID: Dynamic;
  var isDamageVariance: Bool;
  var damageVarianceFormula: Dynamic;
  var isDamageCritical: Bool;
  var damageCriticalFormula: Dynamic;
  var isDamagePrecision: Bool;
  var damagePrecisionFormula: Dynamic;
  var isDamageStockVariableID: Bool;
  var damageStockVariableID: Float;
  var isAddStatus: Bool;
  var statusID: Dynamic;
  var statusPrecisionFormula: Dynamic;
  var isAddSkill: Bool;
  var addSkillID: Dynamic;
  var performSkillID: Dynamic;
  var commonReaction: Dynamic;
  var specialActionKind: EffectSpecialActionKind;
  var scriptFormula: Dynamic;
  var isTemporarilyChangeTarget: Bool;
  var temporarilyChangeTargetFormula: Dynamic;
  var skillItem: Dynamic;

  /**
    Execute the effect.
  **/
  function execute(): Bool;

  /**
    Check if the effect is animated.
  **/
  function isAnimated(): Bool;

  /**
    Get the string representation of the effect.
  **/
  function toString(): String;

  static var prototype: Effect;
}
