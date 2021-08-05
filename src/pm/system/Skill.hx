package pm.system;

/** @class
 *  A skill of the game.
 *  @extends System.CommonSkillItem
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  skill
 */
@:native('Skill')
@:js.import('../../System/System/Skill.js')
extern class Skill extends CommonSkillItem {
  function new(json: Dynamic);

  /**
    Get the string representation of costs.
  **/
  function getCostString(): String;

  static var prototype: Skill;
}
