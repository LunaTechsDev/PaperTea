package pm.datas;

import pm.system.Statistic;
import pm.system.PlaySong;
import pm.system.DynamicValue;
import pm.system.BattleMap;
import pm.system.WeaponArmorKind;
import pm.system.Element;

/**
 * @class
 * All the battle system data.
 * @static
 */
@:native('BattleSystems')
@:js.import('../../System/Datas/BattleSystems.js')
extern class BattleSystems {
  function new();
  static var prototype: BattleSystems;
  private static var elements: Array<Element>;
  private static var elementsOrder: Array<Float>;
  private static var statistics: Array<Float>;
  static var statisticsOrder: Array<Float>;
  static var statisticsElements: Array<Float>;
  static var statisticsElementsPercent: Array<Float>;
  static var maxStatisticID: Float;
  private static var equipments: Array<String>;
  static var equipmentsOrder: Array<Float>;
  static var maxEquipmentID: Float;
  private static var weaponsKind: WeaponArmorKind;
  private static var armorsKind: WeaponArmorKind;
  private static var battleCommands: Array<Float>;
  static var battleCommandsOrder: Array<Float>;
  private static var battleMaps: Array<BattleMap>;
  static var idLevelStatistic: Float;
  static var idExpStatistic: Float;
  static var formulaIsDead: DynamicValue;
  static var formulaCrit: DynamicValue;
  static var heroesBattlersCenterOffset: DynamicValue;
  static var heroesBattlersOffset: DynamicValue;
  static var troopsBattlersCenterOffset: DynamicValue;
  static var troopsBattlersOffset: DynamicValue;
  static var battleMusic: PlaySong;
  static var battleLevelUp: PlaySong;
  static var battleVictory: PlaySong;

  /**
    Read the JSON file associated to battle System.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the statistic corresponding to the level.
  **/
  static function getLevelStatistic(): Statistic;

  /**
    Get the statistic corresponding to the experience.
  **/
  static function getExpStatistic(): Statistic;

  /**
    Get the element by ID.
  **/
  static function getElement(id: Float): Element;

  /**
    Get the statistic by ID.
  **/
  static function getStatistic(id: Float): Statistic;

  /**
    Get the equipment by ID.
  **/
  static function getEquipment(id: Float): String;

  /**
    Get the weapon kind by ID.
  **/
  static function getWeaponKind(id: Float): WeaponArmorKind;

  /**
    Get the armor kind by ID.
  **/
  static function getArmorKind(id: Float): WeaponArmorKind;

  /**
    Get the battle command by ID.
  **/
  static function getBattleCommand(id: Float): Float;

  /**
    Get the battle map by ID.
  **/
  static function getBattleMap(id: Float): BattleMap;
}
