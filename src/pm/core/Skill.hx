package pm.core;

/** @class
 *  A skill learned by a player.
 *  @param {number} id - The ID of the skill
 */
@:native('Skill')
extern class Skill {
  function new(id: Float);
  var id: Float;
  static var prototype: Skill;
}
