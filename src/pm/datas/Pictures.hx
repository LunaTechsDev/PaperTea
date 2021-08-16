package pm.datas;

/**
 * @class
 * All the picture data.
 * @static
 */
@:native('Pictures')
@:js.import('../../System/Datas/Pictures.js')
extern class Pictures {
  function new();
  static var prototype: Pictures;
  private static var list: Array<pm.system.Picture>;

  /**
    Read the JSON file associated to pictures.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the corresponding picture.
  **/
  static function get(kind: pm.core.Enums.PictureKind, id: Float): Dynamic;

  /**
    Get the corresponding picture list by kind.
  **/
  static function getListByKind(kind: pm.core.Enums.PictureKind): Array<Dynamic>;

  /**
    Get a copy of the picture 2D.
  **/
  static function getPictureCopy(kind: pm.core.Enums.PictureKind, id: Float): pm.core.Picture2D;
}
