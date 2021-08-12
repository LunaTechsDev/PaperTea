package pm.scene;

import pm.core.Enums.StatusRestrictionsKind;

@:native('BattleEnemyAttack')
@:js.import('../../System/Scene/BattleEnemyAttack.js')
extern class BattleEnemyAttack {
  function new(battle: Battle);
  var battle: Battle;

  /**
    Initialize step.
  **/
  function initialize(): Void;

  /**
    Define the possible action to do.
  **/
  function definePossibleActions(actions: Array<Dynamic>, restriction: StatusRestrictionsKind): Float;

  /**
    Define the action to do.
  **/
  function defineAction(?restriction: StatusRestrictionsKind): Void;

  /**
    Define the targets
  **/
  function defineTargets(?restriction: StatusRestrictionsKind): Void;

  /**
    Update the battle
  **/
  function update(): Void;

  /**
    Handle key pressed.
  **/
  function onKeyPressedStep(key: Float): Void;

  /**
    Handle key released.
  **/
  function onKeyReleasedStep(key: Float): Void;

  /**
    Handle key repeat pressed.
  **/
  function onKeyPressedRepeatStep(key: Float): Bool;

  /**
    Handle key pressed and repeat.
  **/
  function onKeyPressedAndRepeatStep(key: Float): Bool;

  /**
    Draw the battle HUD.
  **/
  function drawHUDStep(): Void;

  static var prototype: BattleEnemyAttack;
}
