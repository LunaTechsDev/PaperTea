package pm.system;

/** @class
 *  A weapon of the game.
 *  @extends System.Armor
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  weapon
 */
@:native('Weapon')
extern class Weapon extends Armor {
  function new(?json: {});

  /**
    Get the weapon kind.
  **/
  function getType(): WeaponArmorKind;

  static var prototype: Weapon;
}
