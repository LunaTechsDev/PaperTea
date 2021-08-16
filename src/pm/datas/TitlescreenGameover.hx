package pm.datas;

/**
 * @class
 * all the title screen game over data
 * @static
 */
@:native('TitlescreenGameover')
@:js.import('../../System/Datas/TitlescreenGameover.js')
extern class TitlescreenGameover {
  function new();
  static var prototype: TitlescreenGameover;
  static var isTitleBackgroundImage: Bool;
  static var titleBackgroundImageID: Float;
  static var titleBackgroundVideoID: Float;
  static var titleMusic: pm.system.PlaySong;
  static var titleCommands: Array<pm.system.TitleCommand>;
  static var titleSettings: Array<Float>;

  /**
    Read the JSON file associated to title screen and game over.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the commands graphic names.
  **/
  static function getCommandsNames(): Array<pm.graphic.Text>;

  /**
    Get the commands actions functions.
  **/
  static function getCommandsActions(): Array<haxe.Constraints.Function>;

  /**
    Get the commands settings content graphic.
  **/
  static function getSettingsCommandsContent(): Array<pm.graphic.Setting>;

  /**
    Get the settings commands actions functions.
  **/
  static function getSettingsCommandsActions(): Array<haxe.Constraints.Function>;

  /**
    Get the settings commands action function according to ID.
  **/
  static function getSettingsCommandsAction(id: Float): haxe.Constraints.Function;

  /**
    The setting action keyboard assignment.
  **/
  static function keyboardAssignment(): Bool;

  /**
    The setting action language.
  **/
  static function language(): Bool;
}
