package pm.scene;

@:native('BattleVictory')
@:js.import('../../System/Scene/BattleVictory.js')
extern class BattleVictory {
  function new(battle: Battle);
  var battle: Battle;

  /**
    Initialize step.
  **/
  function initialize(): Void;

  /**
    Prepare the rewards (xp, currencies, loots).
  **/
  function prepareRewards(): Void;

  /**
    Update the team progression xp.
  **/
  function updateTeamXP(): Void;

  /**
    Pause the team progression xp.
  **/
  function pauseTeamXP(): Void;

  /**
    Unpause the team progression xp.
  **/
  function unpauseTeamXP(): Void;

  /**
    Play map music.
  **/
  function playMapMusic(): Void;

  /**
    Prepare the end transition.
  **/
  function prepareEndTransition(): Void;

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

  static var prototype: BattleVictory;
}
