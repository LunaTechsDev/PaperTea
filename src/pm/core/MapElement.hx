package pm.core;

import pm.core.Enums.ElementMapKind;
import pm.core.Types.MapElementJSON;
import js.three.Vector3;

/** @class
 *   An element in the map
 *   @property {Float} = 0 | xOffset The x offset of the object according to layer
 *   @property {Float} = 0 | yOffset The y offset of the object according to layer
 *   @property {Float} = 0 | zOffset The z offset of the object according to layer
 *   @property {Orientation} orientation The orientation according to layer
 *   @property {CameraUpDown} upDown The camera up down orientation according to
 *   layer
 */ extern class MapElement {
  public var xOffset: Float;
  public var yOffset: Float;
  public var zOffset: Float;
  public var front: Bool;

  public function new(): Void;

  public function read(json: MapElementJSON): Void;

  public function scale(vecA: Vector3, vecB: Vector3, vecC: Vector3, vecD: Vector3, center: Vector3,
    position: Array<Float>, size: Vector3, kind: ElementMapKind): Void;
}
