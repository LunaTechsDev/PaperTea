package pm.graphic;

@:native('ShopCurrencies')
@:js.import('../../System/Graphic/ShopCurrencies.js')
extern class ShopCurrencies extends Base {
  function new();
  var currencies: Array<TextIcon>;
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
