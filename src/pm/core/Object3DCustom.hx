package pm.core;

import pm.core.Types.StructMapElementCollision;

@:native('Object3DCustom')
@:js.import('../../System/Core/Object3DCustom.js')
extern class Object3DCustom extends Object3D {
  function new(?json: {}, ?datas: Dynamic);

  /**
    Create a new geometry.
  **/
  function createGeometry(position: Position): ts.Tuple2<CustomGeometry,
    ts.Tuple2<Float, Array<StructMapElementCollision>>>;

  static var prototype: Object3DCustom;

  /**
    Create a new 3D object box.
  **/
  static function create(datas: pm.system.Object3D): Object3DCustom;
}
