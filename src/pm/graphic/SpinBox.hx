package pm.graphic;

/** @class
 *  The graphic displaying spinbox inside.
 *  @extends Graphic.Base
 */
@:native('SpinBox')
@:js.import('../../System/Graphic/SpinBox.js')
extern class SpinBox extends Base {
  function new(value: Float, ?times: Bool);
  var graphicTimes: Text;
  var graphicValue: Text;
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
