package pm.core;

import pm.core.Types;
import js.three.Geometry;

/** @class
 *   A floor in the map
 *   @extends Land
 *   @param {Object} [json=undefined] Json object describing the floor
 */
@:native('Floor')
@:js.import('../../System/Core/Floor.js')
extern class Floor extends Land {
  public function new(?json: FloorJSON): Void;
  public function read(json: FloorJSON): Void;

  /** Update the geometry associated to this floor and return the
   *   collision result
   *   @param {THREE.Geometry} geometry The geometry asoociated to the
   *   autotiles
   *   @param {number[]} position The json position
   *   @param {number} width The texture total width
   *   @param {number} height The texture total height
   *   @param {number} count The faces count
   *   @returns {Object}
   */
  public function updateGeometry(geometry: Geometry, position: Array<Float>, width: Float, height: Float,
    count: Int): Any;
}
