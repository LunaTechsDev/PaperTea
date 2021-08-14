package pm.graphic;

import pm.core.Picture2D;
import pm.core.Enums.Align;

@:native('TextIcon')
@:js.import('../../System/Graphic/TextIcon.js')
extern class TextIcon extends Base {
  /**
    * Constructor for Text Icons
    * @param text 
    * @param iconID 
    * @param __2 
    * @param textOptions 
    * ```
    *  { side = Align.Left, align = Align
          .Left, space = Constants.MEDIUM_SPACE } = {}
    * ```
   */
  function new(text: String, iconID: Float,
    ?__2: {@:optional var side: Align; @:optional var align: Align; @:optional var space: Float;}, ?textOptions: {});

  var text: String;
  var iconID: Float;
  var system: pm.system.Base;
  var side: Align;
  var align: Align;
  var space: Float;
  var graphicIcon: Picture2D;
  var graphicText: Text;
  var length: Float;

  /**
    Get the max possible height.
  **/
  function getMaxHeight(): Float;

  /**
    Get the width.
  **/
  function getWidth(): Float;

  /**
    Set the text.
  **/
  function setText(text: String): Void;

  /**
    Drawing the content choice.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the content.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: TextIcon;
}
