package pm.datas;

/**
 * @class
 * All the Song data.
 * @static
 */
@:native('Songs')
@:js.import('../../System/Datas/Songs.js')
extern class Songs {
  function new();
  static var prototype: Songs;
  private static var list: Dynamic;

  /**
    Read the JSON file associated to songs
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the corresponding song.
  **/
  static function get(kind: pm.core.Enums.SongKind, id: Float): Dynamic;
}
