package pm.graphic;

@:jsRequire("./Content/Datas/Scripts/System/Graphic/index", "XPProgression") extern class XPProgression extends Base {
  function new();
  var graphicCharacters: Array<Dynamic>;

  /**
    Update graphics experience.
  **/
  function updateExperience(): Void;

  /**
    Drawing the progression.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the progression.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: XPProgression;
}
