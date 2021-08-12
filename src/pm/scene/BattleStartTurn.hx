package pm.scene;

@:native('BattleStartTurn')
@:js.import('../../System/Scene/BattleStartTurn.js')
extern class BattleStartTurn {
  function new(battle: Battle);
  var battle: Battle;
  var step: Float;
  var active: Bool;
  var statusHealed: Array<ts.Tuple2<Battler, Array<Status>>>;
  var statusStill: Array<ts.Tuple2<Battler, Array<Status>>>;
  var indexTroopReaction: Float;
  var interpreter: ReactionInterpreter;

  /**
    Initialize step.
  **/
  function initialize(): Void;

  function startSelectionEnemyAttack(): Void;
  function defineRandom(user: Battler, restriction: StatusRestrictionsKind): Void;

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

  static var prototype: BattleStartTurn;
}
