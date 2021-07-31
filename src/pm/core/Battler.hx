package pm.core;

import pm.system.ProgressionTable;
import pm.core.Enums.BattlerStep;

/** @class
 *  A battler in a battle (ally or ennemy).
 *  @param {Player} player - The character properties
 *  @param {Vector3} position - The battler position
 *  @param {Camera} camera - the camera associated to the battle
 */
extern class Battler {
  function new(player: Player, ?position: Position, ?vect: Vector3, ?camera: Camera);
  var player: Player;
  var position: Vector3;
  var arrowPosition: Vector2;
  var damagePosition: Vector2;
  var topPosition: Vector2;
  var midPosition: Vector2;
  var botPosition: Vector2;
  var active: Bool;
  var frame: Frame;
  var frameAttacking: Frame;
  var frameArrow: Frame;
  var step: BattlerStep;
  var lastStep: BattlerStep;
  var width: Float;
  var height: Float;
  var selected: Bool;
  var lastCommandIndex: Float;
  var lastCommandOffset: Float;
  var lastSkillIndex: Float;
  var lastSkillOffset: Float;
  var lastItemIndex: Float;
  var lastItemOffset: Float;
  var itemsNumbers: Array<Dynamic>;
  var progressionAllyFront: ProgressionTable;
  var progressionAllyBack: ProgressionTable;
  var progressionEnemyFront: ProgressionTable;
  var progressionEnemyBack: ProgressionTable;
  var timerMove: Float;
  var timeDamage: Float;
  var mesh: Dynamic;
  var upPosition: Vector3;
  var halfPosition: Vector3;
  var moving: Bool;
  var attacking: Bool;
  var damages: Float;
  var isDamagesMiss: Bool;
  var isDamagesCritical: Bool;
  var currentStatusAnimation: Animation;
  var lastStatus: Status;
  var lastStatusHealed: Status;
  var lastTarget: Battler;

  /**
    Check at least one affected status contains the following restriction.
  **/
  function containsRestriction(restriction: StatusRestrictionsKind): Bool;

  /**
    Set the selected state.
  **/
  function setSelected(selected: Bool): Void;

  /**
    Set the active state.
  **/
  function setActive(active: Bool): Void;

  /**
    Set battler step as attacking.
  **/
  function setAttacking(): Void;

  /**
    Check if the battler is attacking (or skill, item, escape).
  **/
  function isStepAttacking(): Bool;

  /**
    Check if the battler is attacking and the frames is currently run.
  **/
  function isAttacking(): Bool;

  /**
    Set battler step as using a skill.
  **/
  function setUsingSkill(): Void;

  /**
    Set battler step as using an item.
  **/
  function setUsingItem(): Void;

  /**
    Set battler step as escaping.
  **/
  function setEscaping(): Void;

  /**
    Set battler step as victory.
  **/
  function setVictory(): Void;

  /**
    Update battler step if is dead, attacked if attacked.
  **/
  function updateDead(attacked: Bool, ?user: Player): Void;

  /**
    Update the battler.
  **/
  function update(angle: Float): Void;

  /**
    Update the selected move progress.
  **/
  function updateSelected(): Void;

  /**
    Update the frame.
  **/
  function updateFrame(): Void;

  /**
    Update the frame.
  **/
  function updateArrow(): Void;

  /**
    Update the damages position.
  **/
  function updateDamages(): Void;

  /**
    Update attacking step frame.
  **/
  function updateAttacking(): Void;

  /**
    Update positions to screen.
  **/
  function updatePositions(): Void;

  /**
    Update the arrow position.
  **/
  function updateArrowPosition(camera: Camera): Void;

  /**
    Update current status animation.
  **/
  function updateAnimationStatus(?previousFirst: Status): Void;

  /**
    Add the battler to scene.
  **/
  function addToScene(): Void;

  /**
    Remove battler from scene.
  **/
  function removeFromScene(): Void;

  /**
    Update the UVs coordinates according to frame and orientation.
  **/
  function updateUVs(): Void;

  /**
    Add a new status and check if already in.
  **/
  function addStatus(id: Float): Status;

  /**
    Remove the status.
  **/
  function removeStatus(id: Float): Status;

  /**
    Update status step (first priority status displayed).
  **/
  function updateStatusStep(): Void;

  /**
    Draw the arrow to select this battler.
  **/
  function drawArrow(): Void;

  /**
    Draw the damages on top of the battler.
  **/
  function drawDamages(): Void;

  /**
    Draw the status on top of the battler.
  **/
  function drawStatus(): Void;

  /**
    Draw the status animation
  **/
  function drawStatusAnimation(): Void;

  /**
    Draw the HUD specific to battler.
  **/
  function drawHUD(): Void;

  static var prototype: Battler;
  static var OFFSET_SELECTED: Float;
  static var TIME_MOVE: Float;
  static var TOTAL_TIME_DAMAGE: Float;
}
