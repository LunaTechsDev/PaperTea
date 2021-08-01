package pm.core;

import pm.core.Enums.CharacterKind;
import pm.core.Enums.ConditionHeroesKind;

extern class Player {
  function new(?kind: CharacterKind, ?id: Float, ?instanceID: Float, ?skills: Array<{}>, ?status: Array<{}>,
    ?name: String, ?json: {});
  var id: Float;
  var kind: CharacterKind;
  var instid: Float;
  var system: Dynamic;
  var name: String;
  var levelingUp: Bool;
  var skills: Array<Skill>;
  var equip: Array<Item>;
  var status: Array<Status>;
  var expList: Array<Float>;
  var editedExpList: {};
  var testedLevelUp: Bool;
  var remainingXP: Float;
  var totalRemainingXP: Float;
  var totalTimeXP: Float;
  var timeXP: Float;
  var obtainedXP: Float;
  var stepLevelUp: Float;
  var battler: Battler;
  var statusRes: Array<{}>;
  var experienceGain: Array<{}>;
  var currencyGain: Array<{}>;
  var skillCostRes: Array<{}>;
  var changedClass: Dynamic;

  /**
    Get the player informations System.
  **/
  function getSystem(): Dynamic;

  /**
    Get a compressed object for saving the character in a file.
  **/
  function getSaveCharacter(): {};

  /**
    Get the statistics for save character.
  **/
  function getSaveStat(): Array<Float>;

  /**
    Get the equips for save character.
  **/
  function getSaveEquip(): Array<Array<Float>>;

  /**
    Check if the character is dead.
  **/
  function isDead(): Bool;

  /**
    Instanciate a character in a particular level.
  **/
  function instanciate(level: Float): Void;

  /**
    Get the stats thanks to equipments.
  **/
  function getEquipmentStatsAndBonus(?item: Dynamic, ?equipmentID: Float): ts.Tuple3<Array<Float>, Array<Float>, {}>;

  /**
    Update stats according to charactersitics.
  **/
  function updateCharacteristics(characteristics: Array<Dynamic>, list: Array<Float>, bonus: Array<Float>,
    res: {}): Void;

  /**
    Update stats with equipment stats
  **/
  function updateEquipmentStats(?list: Array<Float>, ?bonus: Array<Float>, ?res: {}): Void;

  /**
    Initialize stat value.
  **/
  function initStatValue(statistic: Dynamic, value: Float): Void;

  /**
    Update stats value.
  **/
  function updateStatValue(statistic: Dynamic, value: Float): Void;

  /**
    Update all the stats values.
  **/
  function updateAllStatsValues(): Void;

  /**
    Get the bar abbreviation.
  **/
  function getBarAbbreviation(stat: Dynamic): String;

  /**
    Read the JSON associated to the character and items.
  **/
  function read(json: {}): Void;

  /**
    Get the current level.
  **/
  function getCurrentLevel(): Float;

  /**
    Apply level up.
  **/
  function levelUp(): Void;

  /**
    Learn new skills (on level up).
  **/
  function learnSkills(): Void;

  /**
    Get the experience reward.
  **/
  function getRewardExperience(): Float;

  /**
    Get the currencies reward.
  **/
  function getRewardCurrencies(): {};

  /**
    Get the loots reward.
  **/
  function getRewardLoots(): Array<{}>;

  /**
    Update remaining xp according to full time.
  **/
  function updateRemainingXP(fullTime: Float): Void;

  /**
    Update obtained experience.
  **/
  function updateObtainedExperience(): Void;

  /**
    Update experience and check if leveling up.
  **/
  function updateExperience(): Bool;

  /**
    Pass the progressive experience and directly update experience.
  **/
  function passExperience(): Void;

  /**
    Pause experience (when leveling up).
  **/
  function pauseExperience(): Void;

  /**
    Unpause experience.
  **/
  function unpauseExperience(): Void;

  /**
    Check if experience is updated.
  **/
  function isExperienceUpdated(): Bool;

  /**
    Synchronize experience if level was manually updated with a command.
  **/
  function synchronizeExperience(): Void;

  /**
    Synchronize level if experience was manually updated with a command.
  **/
  function synchronizeLevel(): Void;

  /**
    Get the first status to display according to priority.
  **/
  function getFirstStatus(): Array<Status>;

  /**
    Add a new status and check if already in.
  **/
  function addStatus(id: Float): Status;

  /**
    Remove the status.
  **/
  function removeStatus(id: Float): Status;

  /**
    Remove the status with release at end battle option.
  **/
  function removeEndBattleStatus(): Void;

  /**
    Remove the status with release after attacked option.
  **/
  function removeAfterAttackedStatus(): Void;

  /**
    Remove the status with release at start turn option.
  **/
  function removeStartTurnStatus(listStill: Array<Status>): Array<Status>;

  /**
    Update each status turn.
  **/
  function updateStatusTurn(): Void;

  /**
    Get the best weapon armor to replace for shops.
  **/
  function getBestWeaponArmorToReplace(weaponArmor: Dynamic): ts.Tuple3<Float, Float, ts.Tuple3<Array<Float>,
    Array<Float>, {}>>;

  /**
    Add a skill id if not existing yet.
  **/
  function addSkill(id: Float): Void;

  /**
    Remove a skill id if existing.
  **/
  function removeSkill(id: Float): Void;

  /**
    Get characteristics.
  **/
  function getCharacteristics(): Array<Dynamic>;

  /**
    Get player class (depends on if it was changed).
  **/
  function getClass(): Dynamic;

  static var prototype: Player;
  static var MAX_STATUS_DISPLAY_TOP: Float;

  /**
    Get the max size of equipment kind names.
  **/
  static function getEquipmentLength(): Float;

  /**
    Get the max size of equipment kind names.
  **/
  static function getTemporaryPlayer(?values: Array<Float>): Player;

  /**
    Apply callback with all the heroes.
  **/
  static function allTheHeroes(tab: Array<Player>, callback: haxe.Constraints.Function): Bool;

  /**
    Apply callback with none of the heroes.
  **/
  static function noneOfTheHeroes(tab: Array<Player>, callback: haxe.Constraints.Function): Bool;

  /**
    Apply callback with at least one hero.
  **/
  static function atLeastOneHero(tab: Array<Player>, callback: haxe.Constraints.Function): Bool;

  /**
    Apply callback with the hero with instance ID.
  **/
  static function theHeroeWithInstanceID(tab: Array<Player>, id: Float, callback: haxe.Constraints.Function): Bool;

  /**
    Apply callback according to heroes selection.
  **/
  static function applySelection(selectionKind: ConditionHeroesKind, tab: Array<Player>, instanceID: Float,
    callback: haxe.Constraints.Function): Bool;
}
