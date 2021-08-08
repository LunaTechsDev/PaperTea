package pm.graphic;

import pm.system.Color;
import pm.core.Enums.AlignVertical;
import pm.core.Enums.Align;

/** @class
 *  A class for all the texts to display in HUD.
 *  @extends Bitmap
 *  @param {string} [text=""] - The brut text to display
 *  @param {Object} [opts={}] - Options
 *  @param {number} [opts.x=0] - The x coords of the text
 *  @param {number} [opts.y=0] - The y coords of the text
 *  @param {number} [opts.w=0] - The w coords of the text
 *  @param {number} [opts.h=0] - The h coords of the text
 *  @param {Align} [opts.align=Align.Left] - Alignement of the text
 *  @param {number} [opts.fontSize=RPM.defaultValue(RPM.datasGame.System.dbOptions.vtSize, - RPM.fontSize)]
 *  The font height used for the text
 *  @param {string} [opts.fontName=RPM.defaultValue(RPM.datasGame.System.dbOptions.vtFont, - RPM.fontName)]
 *  The font name used for the text
 *  @param {AlignVertical} [opts.verticalAlign=AlignVertical.Center] - Vertical 
 *  alignement of the text
 *  @param {SystemColor} [opts.color=RPM.defaultValue(RPM.datasGame.System.dbOptions.vtcText]
 *  The color used for the text
 *  @param {boolean} [opts.bold=false] - If checked, make the text bold
 *  @param {boolean} [opts.italic=false] - If checked, make the text italic
 *  @param {SystemColor} [opts.backColor=RPM.defaultValue(RPM.datasGame.System.dbOptions.vtcBackground, - null)]
 *  The background color behind the text
 *  @param {SystemColor} [opts.strokeColor=RPM.defaultValue(RPM.datasGame.System.dbOptions.tOutline, - false)? RPM.defaultValue(RPM.datasGame.System.dbOptions.vtcOutline, null) : null]
 *  The stroke color of the text
 */
@:native('Text')
@:js.import('../../System/Graphic/Text.js')
extern class Text extends Base {
  function new(?text: String, ?__1: {
    @:optional
    var x: Float;
    @:optional
    var y: Float;
    @:optional
    var w: Float;
    @:optional
    var h: Float;
    @:optional
    var align: Align;
    @:optional
    var fontSize: Float;
    @:optional
    var fontName: String;
    @:optional
    var verticalAlign: AlignVertical;
    @:optional
    var color: Color;
    @:optional
    var bold: Bool;
    @:optional
    var italic: Bool;
    @:optional
    var backColor: Color;
    @:optional
    var strokeColor: Color;
  });
  var text: String;
  var lines: Array<String>;
  var align: Align;
  var fontSize: Float;
  var fontName: String;
  var verticalAlign: AlignVertical;
  var color: Color;
  var bold: Bool;
  var italic: Bool;
  var backColor: Color;
  var strokeColor: Color;
  var oFont: String;
  var font: String;
  var textWidth: Float;
  var textHeight: Float;
  var lastW: Float;
  function wrapText(maxWidth: Float): Void;

  /**
    Set the font size and the final font.
  **/
  function setFontSize(fontSize: Float): Void;

  /**
    Set the current displayed text.
  **/
  function setText(text: String): Void;

  /**
    Update the context font (without window resizing), this function is
    used before a context.measureText.
  **/
  function updateContextFont(): Void;

  /**
    Update the context font with resizing.
  **/
  function updateContextFontReal(): Void;

  /**
    Measure text width and stock results in the instance.
  **/
  function measureText(): Void;

  /**
    Drawing the text in choice box.
  **/
  function drawChoice(?x: Float, ?y: Float, ?w: Float, ?h: Float, ?positionResize: Bool): Void;

  /**
    Drawing the text in box (duplicate of drawChoice).
  **/
  function draw(?x: Float, ?y: Float, ?w: Float, ?h: Float, ?positionResize: Bool): Void;

  static var prototype: Text;
}
