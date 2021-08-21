package pm.core;

import pm.core.Types.StructMapElementCollision;

/**
 * A 3D object box in the map.
 *
 * @class Object3DBox
 * @extends {Object3D}
 */
@:native('Object3DBox')
@:js.import('../../System/Core/Object3DBox.js')
extern class Object3DBox extends Object3D {
  function new(?json: {}, ?datas: Dynamic);

  /**
    Create a new geometry.
  **/
  function createGeometry(position: Position): ts.Tuple2<CustomGeometry,
    ts.Tuple2<Float, Array<StructMapElementCollision>>>;

  static var prototype: Object3DBox;
  static var VERTICES: Array<Vector3>;
  static var NB_VERTICES: Float;
  static var TEXTURES: Array<Array<Float>>;
  static var TEXTURES_VALUES: Array<Float>;
  static var INDEXES: Array<Float>;

  /**
    Create a new 3D object box.
  **/
  static function create(datas: pm.system.Object3D): Object3DBox;
}
