package pm.system;

import pm.game.GamePlayer;
import pm.core.Types.CharacteristicJSON;
import pm.core.Enums.IncreaseDecreaseKind;
import pm.core.Enums.CharacteristicKind;

/**
 *
 * Characteristic of a common skill item.
 */
extern class Characteristic extends BaseSystem {
  /**
   * The kind of characteristic
   */
  public var kind: CharacteristicKind;

  /**
   * Indicate if an increase / decrease
   */
  public var isIncreaseDecrease: Bool;

  /**
   * The kind of increase decrease
   */
  public var increaseDecreaseKind: IncreaseDecreaseKind;

  public var statisticValueID: DynamicValue;

  /**
   * Element resistance ID value
   */
  public var elementResID: DynamicValue;

  /**
   * Status Resistance ID value
   */
  public var statusResID: DynamicValue;

  /**
   * Currency gain ID value
   */
  public var currencyGainID: DynamicValue;

  /**
   * Skill cost ID value
   */
  public var skillCostID: DynamicValue;

  /**
   * Indicate if all skill cost exists.
   */
  public var isAllSkillCost: Bool;

  /**
   * Variable ID value.
   */
  public var variableID: DynamicValue;

  /**
   * Operation indicate if the operation exists.
   */
  public var operation: Bool;

  /**
   * Value of the value.
   */
  public var value: DynamicValue;

  /**
   * Unit indicate if unit exists.
   */
  public var unit: Bool;

  public var script: DynamicValue;
  public var isAllowEquip: Bool;
  public var isAllowEquipWeapon: Bool;
  public var equipWeaponTypeID: DynamicValue;
  public var equipArmorTypeID: DynamicValue;
  public var isAllowChangeEquipment: Bool;
  public var changeEquipmentID: DynamicValue;
  public var beginEquipmentID: DynamicValue;
  public var beginWeaponArmorID: DynamicValue;
  public var isBeginWeapon: Bool;

  public function new(?json: CharacteristicJSON): Void;

  /** 
   * Read the JSON associated to the characteristic
   * @param {CharacteristicJSON} json Json object describing the characteristic
   */
  public function read(json: CharacteristicJSON): Void;

  public function setup(): Void;

  /** 
   * Get the new stat value of a player with this characteristic bonus
   * @param {GamePlayer} gamePlayer the player
   * @return {Array<Float>}
   */
  public function getNewStatValue(player: GamePlayer): Array<Float>;

  /** Get the string representation of the characteristic
   * @returns {string}
   */
  public function toString(): String;
}
