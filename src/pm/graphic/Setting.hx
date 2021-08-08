package pm.graphic;

@:jsRequire("./Content/Datas/Scripts/System/Graphic/index", "Setting") extern class Setting extends Base {
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
