package pm.graphic;

@:jsRequire("./Content/Datas/Scripts/System/Graphic/index", "TimeCurrencies") extern class TimeCurrencies extends Base {
  function new();
  var currencies: Array<Dynamic>;
  var time: Float;
  var graphicPlayTime: Dynamic;
  var height: Float;
  var offset: Float;

  /**
    Drawing the content choice.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the content.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: TimeCurrencies;
}
