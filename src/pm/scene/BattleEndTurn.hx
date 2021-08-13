package pm.scene;

import pm.core.ReactionInterpreter;

@:native('BattleEndTurn')
@:js.import('../../System/Scene/BattleEndTurn.js')
extern class BattleEndTurn {
  function new(battle: Battle);
  var battle: Battle;
  var step: Float;
  var indexTroopReaction: Float;
  var interpreter: ReactionInterpreter;

  /**
    Initialize step.
  **/
  function initialize(): Void;

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

  static var prototype: BattleEndTurn;
}
