package pm.datas;

import pm.system.FontName;
import pm.system.Detection;
import pm.system.WindowSkin;
import pm.system.Currency;
import pm.system.MapObject;
import pm.eventcommand.SetDialogBoxOptions;
import pm.system.PlaySong;
import pm.system.MainMenuCommand;
import pm.system.Skybox;
import pm.system.CameraProperties;
import pm.system.Color;
import pm.system.Translatable;
import pm.system.DynamicValue;
import pm.system.InventoryFilter;
import js.lib.Promise;

/** @class
 *   All the System datas.
 *   @static
 */
@:native('Systems')
@:js.import('../../Datas/Systems.js')
extern class Systems {
  static var SQUARE_SIZE: Float;
  static var PORTIONS_RAY_NEAR: Float;
  static var FRAMES: Float;
  static var PATH_BR: String;
  static var PATH_DLCS: String;
  static var ID_MAP_START_HERO: Float;
  static var ID_OBJECT_START_HERO: Float;
  static var projectName: Translatable;
  static var antialias: Bool;
  static var mountainCollisionHeight: DynamicValue;
  static var mountainCollisionAngle: DynamicValue;
  static var mapFrameDuration: DynamicValue;
  static var battlersFrames: Float;
  static var battlersColumns: Float;
  static var autotilesFrames: Float;
  static var autotilesFrameDuration: Float;
  static var priceSoldItem: DynamicValue;
  static var enterNameTable: Array<String>;
  static var showBB: Bool;
  // private static var itemsTypes;
  static var inventoryFilters: Array<InventoryFilter>;
  static var mainMenuCommands: Array<MainMenuCommand>;
  static var heroesStatistics: Array<DynamicValue>;
  private static var colors: Array<Color>;
  private static var currencies: Array<Any>;
  private static var windowSkins: Array<Any>;
  private static var cameraProperties: CameraProperties;
  private static var detections: Array<Any>;
  private static var skyboxes: Array<Skybox>;
  private static var fontSizes: Array<Float>;
  private static var fontNames: Array<String>;
  private static var speeds: Array<Float>;
  private static var frequencies: Array<Float>;
  static var soundCursor: PlaySong;
  static var soundConfirmation: PlaySong;
  static var soundCancel: PlaySong;
  static var soundImpossible: PlaySong;
  static var dbOptions: SetDialogBoxOptions;
  static var saveSlots: Float;
  static var modelHero: MapObject;
  static var ignoreAssetsLoadingErrors: Bool;

  public function new(): Void;

  /**
   *  Read the JSON file associated to System.
   *  @static
   */
  public static function read(): Promise<Void>;

  /**
   *  Get the item type by ID safely.
   *  @static
   *  @param {Float} id
   *  @returns {String}
   */
  public static function getItemType(id: Float): Translatable;

  /**
   *  Get the color by ID safely.
   *  @static
   *  @param {Float} id
   *  @returns {System.Color}
   */
  public static function getColor(id: Float): Color;

  /**
   *  Get the currency by ID safely.
   *  @static
   *  @param {Float} id
   *  @returns {String}
   */
  public static function getCurrency(id: Float): Currency;

  /**
   *  Get the window skin by ID safely.
   *  @static
   *  @param {Float} id
   *  @returns {String}
   */
  public static function getWindowSkin(id: Float): WindowSkin;

  /**
   *  Get the camera properties by ID safely.
   *  @static
   *  @param {Float} id
   *  @returns {String}
   */
  public static function getCameraProperties(id: Float): CameraProperties;

  /**
   *  Get the detection by ID safely.
   *  @static
   *  @param {Float} id
   *  @returns {String}
   */
  public static function getDetection(id: Float): Detection;

  /**
   *  Get the skybox by ID safely.
   *  @static
   *  @param {Float} id
   *  @returns {String}
   */
  public static function getSkybox(id: Float): Skybox;

  /**
   *  Get the font size by ID safely.
   *  @static
   *  @param {Float} id
   *  @returns {String}
   */
  public static function getFontSize(id: Float): DynamicValue;

  /**
   *  Get the font name by ID safely.
   *  @static
   *  @param {Float} id
   *  @returns {String}
   */
  public static function getFontName(id: Float): FontName;

  /**
   *  Get the speed by ID safely.
   *  @static
   *  @param {Float} id
   *  @returns {String}
   */
  public static function getSpeed(id: Float): DynamicValue;

  /**
   *  Get the frequency by ID safely.
   *  @static
   *  @param {Float} id
   *  @returns {String}
   */
  public static function getFrequency(id: Float): DynamicValue;

  /**
   *  Get the system object of hero.
   *  @static
   *  @async
   */
  public static function getModelHero(): Promise<Void>;

  /**
   *  Load the window skins pictures
   *  @static
   */
  public static function loadWindowSkins(): Promise<Void>;

  /**
   *  Get the default array currencies for a default game.
   *  @static
   *  @returns {Float[]}
   */
  public static function getDefaultCurrencies(): Array<Float>;

  /**
   *  Get the current System window skin.
   *  @static
   *  @returns {SystemWindowSkin}
   */
  public static function getCurrentWindowSkin(): WindowSkin;
}
