package pm.scene;

import pm.core.WindowChoices;
import pm.core.WindowBox;
import pm.core.ReactionInterpreter;
import pm.core.Enums.MapTransitionKind;
import pm.core.Animation;
import pm.core.Player;
import pm.core.Battler;
import pm.core.Enums.CharacterKind;

/** @class
 *  A scene for battling.
 *  @extends SceneGame
 *  @param {number} troopID - Current troop ID that the allies are fighting
 *  @param {boolean} canGameOver - Indicate if there is a win/lose node or not
 *  @param {boolean} canEscape - Indicate if the player can escape this battle
 *  @param {SystemBattleMap} battleMap - The System battle map
 *  @param {Enum.MapTransitionKind} transitionStart - The kind of transition for 
 *  the battle start
 *  @param {Enum.MapTransitionKind} transitionEnd - The kind of transition for the 
 *  battle end
 *  @param {SystemColor} transitionStartColor - The System color for start
 *  transition
 *  @param {SystemColor} transitionEndColor - The System color for end
 *  transition
 */
@:native('Battle')
@:js.import('../../System/Scene/Battle.js')
extern class Battle extends Map_ {
  function new(troopID: Float, canGameOver: Bool, canEscape: Bool, battleMap: Dynamic, transitionStart: Float,
    transitionEnd: Float, transitionStartColor: Dynamic, transitionEndColor: Dynamic);
  var battleInitialize: BattleInitialize;
  var battleStartTurn: BattleStartTurn;
  var battleSelection: BattleSelection;
  var battleAnimation: BattleAnimation;
  var battleEnemyAttack: BattleEnemyAttack;
  var battleEndTurn: Dynamic;
  var battleVictory: Dynamic;
  var troop: Dynamic;
  var canGameOver: Bool;
  var canEscape: Bool;
  var winning: Bool;
  var loadingStep: Bool;
  var finishedXP: Bool;
  var all: Bool;
  var userTarget: Bool;
  var forceEndBattle: Bool;
  var forceAnAction: Bool;
  var forceAnActionUseTurn: Bool;
  var kindSelection: CharacterKind;
  var selectedUserIndex: Float;
  var selectedTargetIndex: Float;
  var skill: Dynamic;
  var listSkills: Array<Dynamic>;
  var listItems: Array<Dynamic>;
  var effects: Array<Dynamic>;
  var graphicPlayers: Array<Array<pm.graphic.Player>>;
  var graphicRewardTop: Dynamic;
  var battlers: Array<Array<Battler>>;
  var players: Array<Array<Player>>; // Player Core
  var time: Float;
  var timeEnemyAttack: Float;
  var turn: Float;
  var currentSkill: Dynamic;
  var informationText: String;
  var oneTimeTroopReactions: Array<Bool>;
  var animationUser: Animation;
  var animationTarget: Animation;
  var action: Dynamic;
  var transitionStart: MapTransitionKind;
  var transitionStartColor: Dynamic;
  var transitionEnd: MapTransitionKind;
  var transitionEndColor: Dynamic;
  var transitionColorAlpha: Float;
  var transitionColor: Bool;

  /**
    Whether to zoom during a transition
  **/
  var transitionZoom: Bool;

  /**
    Indicate whether the transition has ended
  **/
  var transitionEnded: Bool;

  /**
    Time Transition time
  **/
  var timeTransition: Float;

  /**
    What step (initialization, animation, selection, victory) of battle the game is on
  **/
  var step: Float;

  var subStep: Float;
  var previousStep: Float;
  var previousSubStep: Float;
  var indexTroopReaction: Float;
  var interpreterTroopReaction: ReactionInterpreter;
  var mapCameraDistance: Float;
  var actionDoNothing: Dynamic;
  var cameraStep: Float;
  var cameraTick: Float;
  var cameraON: Bool;
  var cameraDistance: Float;
  var cameraOffset: Float;
  var windowTopInformations: WindowBox;
  var windowTargetInformations: WindowBox;
  var windowUserInformations: WindowBox;
  var windowChoicesBattleCommands: WindowChoices;
  var windowChoicesSkills: WindowChoices;
  var windowChoicesItems: WindowChoices;
  var windowSkillDescription: WindowBox;
  var windowItemDescription: WindowBox;
  var windowExperienceProgression: WindowBox;
  var windowStatisticProgression: WindowBox;
  var windowLoots: WindowBox;
  var musicMap: Dynamic;
  var musicMapTime: Float;
  var sceneMap: Dynamic;
  var loots: Array<{}>;
  var currencies: {};
  var xp: Float;
  var battleMap: Dynamic;
  var currentEffectIndex: Float;
  var currentTargetIndex: Float;
  var priorityIndex: Float;
  var lootsNumber: Float;
  var attackSkill: Dynamic;
  var attackingGroup: CharacterKind;

  /**
    Make the attacking group all actives.
  **/
  function activeGroup(): Void;

  /**
    Check if a player is defined (active and not dead).
  **/
  function isDefined(kind: CharacterKind, index: Float, ?target: Bool): Bool;

  /**
    Check if all the heroes or enemies are inactive.
  **/
  function isEndTurn(): Bool;

  /**
    Check if all the heroes or enemies are dead
  **/
  function isGroupDead(group: CharacterKind): Bool;

  /**
    Check if all the enemies are dead.
  **/
  function isWin(): Bool;

  /**
    Check if all the heroes are dead.
  **/
  function isLose(): Bool;

  /**
    Transition to game over scene.
  **/
  function gameOver(): Void;

  /**
    Win the battle.
  **/
  function win(): Void;

  /**
    Win the battle.
  **/
  function endBattle(): Void;

  /**
    Switch attacking group.
  **/
  function switchAttackingGroup(): Void;

  /**
    Change the step of the battle.
  **/
  function changeStep(i: BattleStep): Void;

  /**
    Initialize the current step.
  **/
  function initialize(): Void;

  /**
    Do camera standard moves.
  **/
  function moveStandardCamera(): Void;

  static var prototype: Battle;
  static var TRANSITION_ZOOM_TIME: Float;
  static var TRANSITION_COLOR_VALUE: Float;
  static var TRANSITION_COLOR_END_WAIT: Float;
  static var TIME_END_WAIT: Float;
  static var TIME_PROGRESSION_XP: Float;
  static var TIME_LINEAR_MUSIC_END: Float;
  static var TIME_LINEAR_MUSIC_START: Float;
  static var TIME_ACTION_ANIMATION: Float;
  static var TIME_ACTION_NO_ANIMATION: Float;
  static var CAMERA_TICK: Float;
  static var CAMERA_OFFSET: Float;
  static var START_CAMERA_DISTANCE: Float;
  static var WINDOW_PROFILE_WIDTH: Float;
  static var WINDOW_PROFILE_HEIGHT: Float;
  static var COMMANDS_NUMBER: Float;
  static var WINDOW_COMMANDS_WIDTH: Float;
  static var WINDOW_COMMANDS_SELECT_X: Float;
  static var WINDOW_COMMANDS_SELECT_Y: Float;
  static var WINDOW_COMMANDS_SELECT_WIDTH: Float;
  static var WINDOW_DESCRIPTIONS_X: Float;
  static var WINDOW_DESCRIPTIONS_Y: Float;
  static var WINDOW_DESCRIPTIONS_WIDTH: Float;
  static var WINDOW_DESCRIPTIONS_HEIGHT: Float;
  static var WINDOW_EXPERIENCE_X: Float;
  static var WINDOW_EXPERIENCE_Y: Float;
  static var WINDOW_EXPERIENCE_WIDTH: Float;
  static var WINDOW_EXPERIENCE_HEIGHT: Float;
  static var WINDOW_STATS_X: Float;
  static var WINDOW_STATS_Y: Float;
  static var WINDOW_STATS_WIDTH: Float;
  static var WINDOW_STATS_HEIGHT: Float;
  static var escapedLastBattle: Bool;
}
