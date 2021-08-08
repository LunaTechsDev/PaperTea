package pm.graphic;

/** @class
 *  A class for all keyboard assign to display in screen.
 *  @param {System.Keyboard} kb
 */
@:native('Keyboard')
@:js.import('../../System/Graphic/Keyboard.js')
extern class Keyboard extends Base {
  function new(kb: pm.system.Keyboard);
  var kb: pm.system.Keyboard;
  var graphicTextName: Text;
  var graphicTextShort: Text;
  var graphicTextInformation: Text;

  /**
    Update short sc.
  **/
  function updateShort(sh: Array<Array<Float>>): Void;

  /**
    Drawing the keyboard in choice box.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the keyboard description.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: Keyboard;
}
