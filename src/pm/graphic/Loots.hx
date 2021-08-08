package pm.graphic;

/** @class
 *  The graphic displaying all the items dropped at the end of a battle.
 *  @extends Graphic.Base
 */
@:native('Loots')
@:js.import('../../System/Graphic/Loots.js')
extern class Loots extends Base {
  function new(loots: Array<{}>, nb: Float);
  var graphicsLoots: Array<Item>;

  /**
    Drawing the loots.
  **/
  function drawChoice(?x: Float, ?y: Float, ?w: Float, ?h: Float): Void;

  /**
    Drawing the loots.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: Loots;
}
