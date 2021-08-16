package pm.datas;

@:native('Settings')
@:js.import('../../System/Datas/Settings.js')
extern class Settings {
  function new();
  static var prototype: Settings;
  static var kb: Array<Array<Array<Float>>>;
  static var currentLanguage: Float;
  static var isProtected: Bool;

  /**
    Read the settings file.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Write the settings file.
  **/
  static function write(): Void;

  /**
    Check if the app is in dev mode
  **/
  static function checkIsProtected(): js.lib.Promise<Void>;

  /**
    Update Keyboard settings.
  **/
  static function updateKeyboard(id: Float, sc: Array<Array<Float>>): Void;

  /**
    Update current language setting.
  **/
  static function updateCurrentLanguage(id: Float): Void;
}
