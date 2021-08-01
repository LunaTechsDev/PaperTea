package pm.core;

import pm.core.Types.AutotileJSON;
import js.three.Geometry;

/** @class
 *   @extends Land
 *   An autotile in the map
 *   @property {Int} autotileID The autotile ID
 *   @property {Int} tileID The tile ID kind to draw according to other
 *   autotiles outside
 *   @param {AutotileJSON} [json=undefined] Json object describing the autotile
 */
@:native('Autotile')
@:js.import('../../System/Core/Autotile.js')
extern class Autotile extends Land {
  public var autotileID: Int;
  public var tileID: Int;

  public function new(?json: AutotileJSON): Void;

  /** Read the JSON associated to the autotile
   *   @param {AutotileJSON} json Json object describing the autotile
   */
  public function read(json: AutotileJSON): Void;

  /** Update the geometry associated to this autotile and return the
   *   collision result
   *   @param {THREE.Geometry} geometry The geometry asoociated to the
   *   autotiles
   *   @param {TextureSeveral} texure The several texture used for this
   *   geometry
   *   @param {number[]} position The json position
   *   @param {number} width The texture total width
   *   @param {number} height The texture total height
   *   @param {number} count The faces count
   *   @returns {Object}
   */
  public function updateGeometry(geometry: Geometry, texture: TextureBundle, position: Array<Float>, width: Float,
    height: Float, count: Int): Any;
}
