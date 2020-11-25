package pm.system;

import pm.core.Types.ClassSkillJSON;

/**
 * Class skill in the game.
 * Used to learn specific skills for a class.
 */
extern class ClassSkill extends BaseSystem {
  /**
   * ID of the skills
   */
  public var id: Int;

  /**
   * Level to reach to learn the skill
   */
  public var level: Int;

  public function new(json: ClassSkillJSON): Void;

  public function setup(): Void;

  /** 
   * Read the JSON associated to the class skill
   * @param {Object} json Json object describing the class skill
   */
  public function read(json: ClassSkillJSON): Void;
}
