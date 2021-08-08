package pm.graphic;

/** @class
 *  The graphic displaying the player skills informations in skill menu.
 *  @extends Graphic.Base
 *  @param {Skill} skill - The current selected skill
 */
@:native('Skill')
extern class Skill extends Base {
  function new(skill: pm.core.Skill);
  var system: pm.system.Skill;
  var graphicName: TextIcon;
  var graphicCost: Text;
  var graphicInformations: SkillItem;

  /**
    Drawing the skill in choice box.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the skill description.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: Skill;
}
