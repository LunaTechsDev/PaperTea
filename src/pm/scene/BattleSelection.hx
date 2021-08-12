package pm.scene;

import pm.core.Enums.TargetKind;
import pm.core.Enums.CharacterKind;

@:native('BattleSelection')
@:js.import('../../System/Scene/BattleSelection.js')
extern class BattleSelection {
  function new(battle: Battle);
  var battle: Battle;

  /**
    Initialize step.
  **/
  function initialize(): Void;

  /**
    Register the last command index and offset in the user.
  **/
  function registerLastCommandIndex(): Void;

  /**
    Register the laster skill index and offset in the user.
  **/
  function registerLastSkillIndex(): Void;

  /**
    Register the last item index and offset in the user.
  **/
  function registerLastItemIndex(): Void;

  /**
    Select a target.
  **/
  function selectTarget(targetKind: TargetKind): Void;

  /**
    Select the first index according to target kind.
  **/
  function selectFirstIndex(kind: CharacterKind, index: Float): Float;

  /**
    Get the index of the array after going up.
  **/
  function indexArrowUp(): Float;

  /**
    Get the index of the array after going down.
  **/
  function indexArrowDown(): Float;

  /**
    Move the arrow.
  **/
  function moveArrow(): Void;

  /**
    Get the index of the target.
  **/
  function selectedUserTargetIndex(): Float;

  /**
    When an ally is selected.
  **/
  function onAllySelected(): Void;

  /**
    When an ally is unselected.
  **/
  function onAllyUnselected(): Void;

  /**
    When a command is selected.
  **/
  function onCommandSelected(key: Float): Void;

  /**
    When targets are selected.
  **/
  function onTargetsSelected(): Void;

  /**
    When targets are unselected.
  **/
  function onTargetsUnselected(): Void;

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

  static var prototype: BattleSelection;
}
