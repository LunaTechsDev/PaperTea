package pm.graphic;

/** @class
 *  The graphic displaying all currencies and play time in scene menu.
 *  @extends Graphic.Base
 */
@:native('TimeCurrencies')
@:js.import('../../System/Graphic/TimeCurrencies.js')
extern class TimeCurrencies extends Base {
  function new();
  var currencies: Array<TextIcon>;
  var time: Float;
  var graphicPlayTime: Text;
  // Comes from the height from Bitmap
  // var height: Float;
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
