package pm.core;

import js.three.MeshStandardMaterial;

/** @class
 *   Several textures in a single file
 *   @property {number[][]} list List of each offset point, default is an empty
 *   @property {THREE.Material} texture The generated texture, default is null
 *   @property {number} beginID The begining texture ID
 *   @property {number[]} beginPoint The begining texture point offset
 *   @property {number} endID The ending texture ID
 *   @property {number[]} endPoint The ending texture point offset
 *   array
 */
@:native('TextureBundle')
@:js.import('../../System/Core/TextureBundle.js')
extern class TextureBundle {
  public var list: Array<Array<Float>>;
  public var texture: MeshStandardMaterial;
  public var beginID: Int;
  public var beginPoint: Array<Float>;
  public var endID: Int;
  public var endPoint: Array<Float>;

  // Previously TextureSeveral
  public function new(): Void;

  /** Set the begining texture
   *   @param {Int} id The begining texture ID
   *   @param {Float[]} point The begining texture point offset
   */
  public function setBegin(id: Int, point: Array<Float>): Void;

  /** Set the ending texture
   *   @param {Int} id The ending texture ID
   *   @param {Float[]} point The ending texture point offset
   */
  public function setEnd(id: Int, point: Array<Float>): Void;

  /** Check which point is on top
   *   @param {Float[]} rect
   *   @param {Float[]} point
   *   @returns {Bool}
   */
  public function isSup(rect: Array<Float>, point: Array<Float>): Bool;

  /** Check which point is on bot
   *   @param {Float[]} rect
   *   @param {Float[]} point
   *   @returns {Bool}
   */
  public function isInf(rect: Array<Float>, point: Array<Float>): Bool;

  /** Check if a couple (id, rect) is inside this texture
   *   @param {Int} id
   *   @param {Float[]} rect
   *   @returns {Bool}
   */
  public function isInTexture(id: Int, rect: Array<Float>): Bool;

  /** Add a couple (id, point) inside the list
   *   @param {Int} id
   *   @param {Float[]} point
   */
  public function addToList(id: Int, point: Array<Float>): Void;

  /** Get the offset of couple (id, rect)
   *  By default returns -1
   *   @param {Int} id
   *   @param {Float[]} rect
   *   @returns {Float}
   */
  public function getOffset(id: Int, rect: Array<Float>): Float;
}
