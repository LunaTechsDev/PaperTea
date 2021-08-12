package pm.scene;

@:native('BattleInitialize')
@:js.import('../../System/Scene/BattleInitialize.js')
extern class BattleInitialize {
  function new(battle: Dynamic);
  var battle: Dynamic;

  /**
    Initialize step.
  **/
  function initialize(): Void;

  /**
    Initialize allies battlers.
  **/
  function initializeAlliesBattlers(): Void;

  /**
    Initialize enemies battlers.
  **/
  function initializeEnemiesBattlers(): Void;

  /**
    Initialize informations (boxes).
  **/
  function initializeInformation(): Void;

  /**
    Initialize window commands.
  **/
  function initializeWindowCommands(): Void;

  /**
    Initialize windows end
  **/
  function initializeWindowsEnd(): Void;

  /**
    Initialize musics.
  **/
  function initializeMusic(): Void;

  /**
    Update the battle.
  **/
  function update(): Void;

  /**
    Update transtion start fade.
  **/
  function updateTransitionStartFade(): Void;

  /**
    Update transition start zoom.
  **/
  function updateTransitionStartZoom(): Void;

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
    Draw the battle HUD
  **/
  function drawHUDStep(): Void;

  static var prototype: BattleInitialize;
}
