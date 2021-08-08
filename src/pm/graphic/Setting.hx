package pm.graphic;

/** @class
 *  A class for all settings to display in screen.
 *  @extends Graphic.Base
 *  @param {number} id - 
 */
@:native('Setting')
@:js.import('../../System/Graphic/Setting.js')
extern class Setting extends Base {
  function new(id: Float);
  var graphicRight: Dynamic;
  var graphicTextLeft: Dynamic;
  var graphicTextInformation: Dynamic;

  /**
    Drawing the choice.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the settings informations.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: Setting;
}
