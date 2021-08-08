package pm.graphic;

@:jsRequire("./Content/Datas/Scripts/System/Graphic/index", "RewardsTop") extern class RewardsTop extends Base {
  function new(xp: Float, currencies: {});
  var graphicXP: Dynamic;
  var graphicXPLength: Float;
  var graphicCurrencies: Array<Dynamic>;

  /**
    Drawing the progression.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the progression.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: RewardsTop;
}
