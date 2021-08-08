package pm.graphic;

/** @class
 *  The graphic displaying all experience + currencies
 */
@:native('RewardsTop')
@:js.import('../../System/Graphic/RewardsTop.js')
extern class RewardsTop extends Base {
  function new(xp: Float, currencies: {});
  var graphicXP: Text;
  var graphicXPLength: Float;
  var graphicCurrencies: Array<TextIcon>;

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
