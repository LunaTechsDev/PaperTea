package pm.system;

@:jsRequire("./Content/Datas/Scripts/System/System/FontName", "FontName") extern class FontName extends Base {
  function new(?json: {});
  var name: String;
  var isBasic: Bool;
  var font: Dynamic;
  var customFontID: Float;

  /**
    Get the font name (default or custom).
  **/
  function getName(): String;

  static var prototype: FontName;
}
