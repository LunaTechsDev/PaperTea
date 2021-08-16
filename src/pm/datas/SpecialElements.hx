package pm.datas;

/**
 * @class
 * All the song data.
 * @static
 */
@:native('SpecialElements')
@:js.import('../../System/Datas/SpecialElements.js')
extern class SpecialElements {
  function new();
  static var prototype: SpecialElements;
  static var autotiles: Array<pm.system.Autotile>;
  static var walls: Array<pm.system.SpecialElement>;
  static var mountains: Array<pm.system.Mountain>;
  static var objects: Array<pm.system.Object3D>;

  /**
    Read the JSON file associated to special elements.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the autotile by ID.
  **/
  static function getAutotile(id: Float): pm.system.Autotile;

  /**
    Get the wall by ID.
  **/
  static function getWall(id: Float): pm.system.SpecialElement;

  /**
    Get the mountain by ID.
  **/
  static function getMountain(id: Float): pm.system.Mountain;

  /**
    Get the object 3D by ID.
  **/
  static function getObject3D(id: Float): pm.system.Object3D;
}
