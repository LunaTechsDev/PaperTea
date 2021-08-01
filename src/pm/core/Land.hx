package pm.core;

import js.three.Geometry;
import pm.core.Types.LandJSON;

/** @class
 *   A land in the map
 *   @property {boolean} up Indicate if the layer is up or down
 *   @property {number[]} texture Texture rect of the land
 */
@:native('Land')
@:js.import('../../System/Core/Land.js')
extern class Land extends MapElement {
  public var up: Bool;
  public var texture: Array<Float>;

  public function new(): Void;

  /** Read the JSON associated to the land
   *   @param {LandJSON} json Json object describing the land
   */
  public function read(json: LandJSON): Void;

  /** Return the rect index
   *   @returns {number}
   */
  public function getIndex(width: Float): Int;

  /** Update the geometry associated to this land and return the collision
   *   result
   *   @param {THREE.Geometry} geometry The geometry asoociated to the
   *   autotiles
   *   @param {CollisionSquare} collision The collision square
   *   @param {number[]} position The json position
   *   @param {number} width The texture total width
   *   @param {number} height The texture total height
   *   @param {number} x The x texture position
   *   @param {number} y The y texture position
   *   @param {number} w The w texture size
   *   @param {number} h The h texture size
   *   @param {number} count The faces count
   *   @returns {Object}
   */
  public function updateGeometry(geometry: Geometry, collision: CollisionSquare, position: Array<Float>, width: Float,
    height: Float, x: Float, y: Float, w: Float, h: Float, count: Int): Any;
}
