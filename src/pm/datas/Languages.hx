package pm.datas;

@:native('Languages')
@:js.import('../../System/Datas/Languages.js')
extern class Languages {
  function new();
  static var prototype: Languages;
  private static var list: Array<pm.system.Lang>;
  static var listOrder: Array<Float>;

  /**
    Read the JSON file associated to languages.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the main language ID.
  **/
  static function getMainLanguageID(): Float;

  /**
    Get the language name by ID.
  **/
  static function get(id: Float): String;

  /**
    Get the index according to language ID.
  **/
  static function getIndexByID(id: Float): Float;

  /**
    Get the language graphics.
  **/
  static function getCommandsGraphics(): Array<pm.graphic.Text>;

  /**
    Get the language callbacks.
  **/
  static function getCommandsCallbacks(): Array<() -> Bool>;
}
