package pm.graphic;

import pm.core.Picture2D;

@:jsRequire("./Content/Datas/Scripts/System/Graphic/index", "SkillItem") extern class SkillItem extends Base {
  function new(system: Dynamic);
  var system: Dynamic;
  var graphicElements: Array<Picture2D>;
  var graphicName: Dynamic;
  var graphicType: Dynamic;
  var graphicDescription: Dynamic;
  var graphicTarget: Dynamic;
  var graphicEffects: Array<Dynamic>;
  var graphicCharacteristics: Array<Dynamic>;

  /**
    Drawing the skill description.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the skill description.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: SkillItem;
}
