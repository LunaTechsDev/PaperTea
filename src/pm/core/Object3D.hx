package pm.core;

import pm.core.Types.StructMapElementCollision;

/** @class
 *  The abstract class who model the Structure of RPM datas.
 *  @extends MapElement
 */
@:native('Object3D')
@:js.import('../../System/Core/Object3D.js')
extern class Object3D extends MapElement {
  function new();
  var id: Float;
  var datas: pm.system.Object3D;

  /**
    Get the center vector.
  **/
  function getCenterVector(): Vector3;

  /**
    Update the geometry of a group of object 3D with the same material.
  **/
  function updateGeometry(geometry: Dynamic, position: Position,
    count: Float): ts.Tuple2<Float, Array<StructMapElementCollision>>;

  static var prototype: Object3D;
}
