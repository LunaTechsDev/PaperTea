package pm.graphic;

@:jsRequire("./Content/Datas/Scripts/System/Graphic/index", "TextIcon") extern class TextIcon extends Base {
  function new(text: String, iconID: Float,
    ?__2: {@:optional var side: content.datas.scripts.system.common.enum.enum.Align; @:optional var align: content.datas.scripts.system.common.enum.enum.Align; @:optional var space: Float;},
    ?textOptions: {});
  var text: String;
  var iconID: Float;
  var system: Dynamic;
  var side: content.datas.scripts.system.common.enum.enum.Align;
  var align: content.datas.scripts.system.common.enum.enum.Align;
  var space: Float;
  var graphicIcon: content.datas.scripts.system.core.index.Picture2D;
  var graphicText: Dynamic;
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
