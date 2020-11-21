package pm.core;

import pm.core.Enums.ElementMapKind;
import pm.core.Types.SpriteJSON;
import js.three.Vector3;

extern class Sprite extends MapElement {
  public static var Y_AXIS: Vector3;
  public static var X_AXIS: Vector3;
  public static var Z_AXIS: Vector3;

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
}
