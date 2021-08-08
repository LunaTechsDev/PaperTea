package pm.graphic;

@:jsRequire("./Content/Datas/Scripts/System/Graphic/index", "SpinBox") extern class SpinBox extends Base {
  function new(value: Float, ?times: Bool);
  var graphicTimes: Dynamic;
  var graphicValue: Dynamic;
  var value: Float;
  var times: Bool;

  /**
    Update value.
  **/
  function setValue(value: Float): Void;

  /**
    Drawing the skill or item use informations.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the skill or item use informations.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: SpinBox;
}
