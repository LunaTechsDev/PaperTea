package pm.scene;

import pm.core.Enums.AnimationEffectConditionKind;

@:native('BattleAnimation')
@:js.import('../../System/Scene/BattleAnimation.js')
extern class BattleAnimation {
  function new(battle: Battle);
  var battle: Battle;

  /**
    Initialize step.
  **/
  function initialize(): Void;

  /**
    Get the animation efect condition kind.
  **/
  function getCondition(): AnimationEffectConditionKind;

  /**
    Update the targets attacked and check if they are dead.
  **/
  function updateTargetsAttacked(): Void;

  /**
    Update the battle.
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

  static var prototype: BattleAnimation;
}
