package pm.system;

import pm.core.Types.ArmorJSON;

/**
 * An armor within the game.
 */
extern class Armor extends CommonSkillItem {
  /**
   * Indicates whether the armor has an effect or not
   */
  public var hasEffect: Bool;

  /**
   * Id type of the kind of armor
   */
  public var idType: Int;

  public function new(?json: ArmorJSON): Void;

  public function setup(): Void;

  /** 
   * Read the JSON associated to the armor
   * @param {Object} json Json object describing the armor
   */
  public function read(json: ArmorJSON): Void;

  /**
   * Get the armor type
   * @return {WeaponArmorKind}
   */
  public function getType(): WeaponArmorKind; // TODO: Update the SysWeaponArmorKind

}
