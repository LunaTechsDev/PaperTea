package pm.core;

import js.three.Geometry;
import pm.core.Enums.ElementMapKind;
import pm.core.Types.SpriteJSON;
import js.three.Vector3;

/** @class
 *   A sprite in the map
 *   @extends MapElement
 *   @property {THREE.Vector3} [Sprite.Y_AXIS=new THREE.Vector3(0, 1, 0)] The
 *   unit Y axis vector
 *   @property {THREE.Vector3} [Sprite.X_AXIS=new THREE.Vector3(1, 0, 0)] The
 *   unit X axis vector
 *   @property {THREE.Vector3} [Sprite.Z_AXIS=new THREE.Vector3(0, 0, 1)] The
 *   unit Z axis vector
 *   @property {boolean} front Indicate if the sprite is in front (for layers)
 *   @property {ElementMapKind} kind The element map kind
 *   @property {number[]} textureRect Texture UV coords
 *   @param {SpriteJSON} [json=undefined] Json object describing the sprite
 */
extern class Sprite extends MapElement {
  public static var Y_AXIS: Vector3;
  public static var X_AXIS: Vector3;
  public static var Z_AXIS: Vector3;

  public var kind: ElementMapKind;
  public var textureRect: Array<Float>;

  public function new(?json: SpriteJSON): Void;

  /** Read the JSON associated to the sprite
   *   @param {SpriteJSON} json Json object describing the sprite
   */
  public function read(json: SpriteJSON): Void;

  /** Create a new sprite
   *   @static
   *   @param {ElementMapKind} kind The element map kind
   *   @param {number[]} texture Texture UV coords
   */
  public static function create(kind: ElementMapKind, texture: Array<Float>): Sprite;

  public static function rotateVertex(vec: Vector3, center: Vector3, angle: Float, axis: Vector3): Void;

  /** Rotate the four vertices of a sprite around a specified center
   *   @static
   *   @param {THREE.Vector3} vecA The A vertex to rotate
   *   @param {THREE.Vector3} vecB The B vertex to rotate
   *   @param {THREE.Vector3} vecC The C vertex to rotate
   *   @param {THREE.Vector3} vecD The D vertex to rotate
   *   @param {THREE.Vector3} center The center to rotate around
   *   @param {number} angle The angle in degree
   *   @param {THREE.Vector3} axis The vector axis
   */
  public static function rotateSprite(vecA: Vector3, vecB: Vector3, vecC: Vector3, vecD: Vector3, center: Vector3,
    angle: Float, axis: Vector3): Void;

  /** Add a static sprite to the geometry
   *   @static
   *   @param {THREE.Geometry} geometry The geometry
   *   @param {THREE.Vector3} vecA The A vertex
   *   @param {THREE.Vector3} vecB The B vertex
   *   @param {THREE.Vector3} vecC The C vertex
   *   @param {THREE.Vector3} vecD The D vertex
   *   @param {THREE.Vector2} texFaceA The texture face A
   *   @param {THREE.Vector2} texFaceB The texture face B
   *   @param {number} count The faces count
   *   @returns {number}
   */
  public static function addStaticSpriteToGeometry(geometry: Geometry, vecA: Vector3, vecB: Vector3, vecC: Vector3,
    vecD: Vector3, texFaceA: js.three.Vector2, texFaceB: js.three.Vector2, count: Int): Float;

  /** Update the geometry associated to this
   *   @param {THREE.Geometry} geometry The geometry
   *   @param {number} width The total texture width
   *   @param {number} height The total texture height
   *   @param {number[]} position The json position
   *   @param {number} count The faces count
   *   @param {boolean} tileset Indicate if the texture is tileset
   *   @param {THREE.Vector3} localPosition The local position
   *   @returns {any[]}
   */
  public function updateGeometry(geometry: Geometry, width: Float, height: Float, position: Array<Float>, count: Int,
    tileset: Bool, localPosition: Vector3): Array<Any>;

  /** Create the geometry associated to this sprite
   *   @param {number} width The texture total width
   *   @param {number} height The texture total height
   *   @param {boolean} tileset Indicate if the texture is tileset
   *   @param {number[]} position The json position
   *   @returns {any[]}
   */
  public function createGeometry(width: Float, height: Float, tileset: Bool, position: Array<Float>): Array<Any>;
}
