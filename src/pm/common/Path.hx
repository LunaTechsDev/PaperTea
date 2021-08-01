package pm.common;

@:native('Paths') // TODO: Subject to change
@:js.import('../../System/Common/Paths.js')
extern class Path {
  /**
   * ""
   */
  public static final BR: String;

  /**
   * .
   */
  public static final ROOT_DIRECTORY_LOCAL: String;

  /**
   * file:///
   */
  public static final FILES: String;

  /**
   * The data directory
   * Platform.ROOT_DIRECTORY + "/Content/Datas"
   */
  public static final DATAS: String;

  /**
   * The Map Information Path
   * Paths.DATAS + "Maps"
   */
  public static final FILE_MAPS: String;

  /**
   * /infos.json
   */
  public static final FILE_MAP_INFOS: String;

  /**
   * /objects.json
   */
  public static final FILE_MAP_OBJECTS: String;

  /**
   * Picture data path
   * Paths.DATAS + "pictures.json"
   */
  public static final FILE_PICTURES_DATAS: String;

  /**
   * Video data path
   * Paths.DATAS + "videos.json"
   */
  public static final FILE_VIDEOS_DATAS: String;

  /**
   * Songs data path
   * Paths.DATAS + "songs.json"
   */
  public static final FILE_SONGS_DATAS: String;

  /**
   * Shapes Data
   * Paths.DATAS + "shapes.json"
   */
  public static final FILE_SHAPES_DATAS: String;

  /**
   * Common Event Data
   * Paths.DATAS + "commonEvents.json"
   */
  public static final FILE_COMMON_EVENTS: String;

  /**
   * Item Data
   * Paths.DATAS + "items.json"
   */
  public static final FILE_ITEMS: String;

  /**
   * Skill Data
   * Paths.DATAS + "skills.json"
   */
  public static final FILE_SKILLS: String;

  /**
   * Weapons data
   * Paths.DATAS + "weapons.json"
   */
  public static final FILE_WEAPONS: String;

  /**
   * Armors data
   * Paths.DATAS + "armors.json"
   */
  public static final FILE_ARMORS: String;

  /**
   * Heroes data
   * Paths.DATAS + "heroes.json"
   */
  public static final FILE_HEROES: String;

  /**
   * Monsters data
   * Paths.DATAS + "monster.json"
   */
  public static final FILE_MONSTERS: String;

  /**
   * Troops data
   * Paths.DATAS + "troops.json"
   */
  public static final FILE_TROOPS: String;

  /**
   * Battle System Data
   * Paths.DATAS + "battleSystem.json"
   */
  public static final FILE_BATTLE_SYSTEM: String;

  /**
   * Title Screen Game Over Data
   * Paths.DATAS + "titlescreenGameover.json"
   */
  public static final FILE_TITLE_SCREEN_GAME_OVER: String;

  /**
   * Keyboard data
   * RPM.PATH_DATAS + "keyBoard" + RPM.EXTENSION_JSON;
   */
  public static final FILE_KEYBOARD: String;

  /**
   * System Data
   *  RPM.PATH_DATAS + "system" + RPM.EXTENSION_JSON;
   */
  public static final FILE_SYSTEM: String;

  /**
   * Class Data
   * RPM.PATH_DATAS + "classes" + RPM.EXTENSION_JSON;
   */
  public static final FILE_CLASSES: String;

  /**
   * Tileset Data
   *  RPM.PATH_DATAS + "tilesets" + RPM.EXTENSION_JSON;
   */
  public static final FILE_TILESETS_DATAS: String;

  /**
   * Special Elements Data
   * RPM.PATH_DATAS + "specialElements" + RPM.EXTENSION_JSON;
   */
  public static final FILE_SPECIAL_ELEMENTS: String;

  /**
   * Variable Data
   * RPM.PATH_DATAS + "variables" + RPM.EXTENSION_JSON;
   */
  public static final FILE_VARIABLES: String;

  /**
   * Settings Data
   * RPM.PATH_DATAS + "settings" + RPM.EXTENSION_JSON;
   */
  public static final FILE_SETTINGS: String;

  /**
   * DLC Data
   * RPM.PATH_DATAS + "dlcs" + RPM.EXTENSION_JSON;
   */
  public static final FILE_DLCS: String;

  /**
   * Animation Data
   * RPM.PATH_DATAS + "animations" + RPM.EXTENSION_JSON;
   */
  public static final FILE_ANIMATION: String;
}
