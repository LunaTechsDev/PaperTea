package pm.core;

import js.three.Geometry;
import pm.core.Types.SpriteWallJSON;
import pm.core.Enums.SpriteWallKind;

/** @class
 *   A sprite in the map
 *   @extends MapElement
 *   @property {number} id The picture ID of the sprite
 *   @property {SpriteWallKind} kind The kind of wall (border or not)
 *   @param {Object} [json=undefined] Json object describing the wall
 */
extern class SpriteWall extends MapElement {
  public var id: Int;
  public var kind: SpriteWallKind;

  public function new(?json: SpriteWallJSON): Void;

  /** Update the geometry of a group of sprite walls with the same material
   *   @param {THREE.Geometry} geometry The geometry
   *   @param {number[]} position The json position
   *   @param {number} width The total width of the texture
   *   @param {number} height The total height of the texture
   *   @param {number} count The faces count
   *   @return {any[]}
   */
  public function updateGeometry(geometry: Geometry, position: Array<Float>, width: Float, height: Float,
    count: Int): Any;
}
