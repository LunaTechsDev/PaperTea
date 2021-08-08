package pm.graphic;

@:jsRequire("./Content/Datas/Scripts/System/Graphic/index", "ShopCurrencies") extern class ShopCurrencies extends Base {
  function new();
  var currencies: Array<Dynamic>;
  function getWidth(): Float;

  /**
    Drawing the content choice.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the content.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: ShopCurrencies;
}
