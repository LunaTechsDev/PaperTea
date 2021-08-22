package pm.core;

import js.three.ArrayLike;
import js.three.BufferGeometry;

/**
 *  The geometry used to apply vertices + indices + uvs.
 * 
 *  @class CustomGeometry
 *  @extends THREE.BufferGeometry
 */
@:native('CustomGeometry')
@:js.import('../../System/Core/CustomGeometry.js')
extern class CustomGeometry extends BufferGeometry {
  public var b_vertices: Array<Float>;
  public var b_indices: Array<Float>;
  public var b_uvs: Array<Float>;

  /**
   *  Create a BoxGeometry kind CustomGeometry.
   *  @static
   *  @param {number} width
   *  @param {number} height
   *  @param {number} depth
   */
  public static function createBox(width: Float, height: Float, depth: Float): CustomGeometry;

  /**
   *  Set UVs tex for a classic quad according to x y w h values.
   *  @static
   *  @param {number} x
   *  @param {number} y
   *  @param {number} w
   *  @param {number} h
   */
  public static function uvsQuadToTex(texA: Vector2, texB: Vector2, texC: Vector2, texD: Vector2, x: Float, y: Float,
    w: Float, h: Float): Void;

  /**
   *  Get the vertices numbers array.
   *  @returns {ArrayLike<number>}
   */
  public function getVertices(): ArrayLike<Float>;

  /**
   *  Get the indices numbers array.
   *  @returns {ArrayLike<number>}
   */
  public function getIndices(): ArrayLike<Float>;

  /**
   *  Get the uvs numbers array.
   *  @returns {ArrayLike<number>}
   */
  public function getUVs(): ArrayLike<Float>;

  /**
   *  Get the normals numbers array.
   *  @returns {ArrayLike<number>}
   */
  public function getNormals(): ArrayLike<Float>;

  /**
   *  Push vertices for triangle geometries.
   *  @param {Core.Vector3} vecA
   *  @param {Core.Vector3} vecB
   *  @param {Core.Vector3} vecC
   */
  public function pushTriangleVertices(vecA: Vector3, vecB: Vector3, vecC: Vector3): Void;

  /**
   *  Push indices for triangle geometries.
   *  @param {number} count
   */
  public function pushTriangleIndices(count: Float): Void;

  /**
   *  Push UVs for triangle geometries.
   *  @param {Core.Vector2} texA
   *  @param {Core.Vector2} texB
   *  @param {Core.Vector2} texC
   *  @param {Core.Vector2} texD
   */
  public function pushTriangleUVs(texA: Vector2, texB: Vector2, texC: Vector2): Void;

  /**
   *  Push vertices for quad geometries.
   *  @param {Core.Vector3} vecA
   *  @param {Core.Vector3} vecB
   *  @param {Core.Vector3} vecC
   *  @param {Core.Vector3} vecD
   */
  public function pushQuadVertices(vecA: Vector3, vecB: Vector3, vecC: Vector3, vecD: Vector3): Void;

  /**
   *  Push indices for quad geometries.
   *  @param {number} count
   */
  public function pushQuadIndices(count: Float): Void;

  /**
   *  Push UVs for quad geometries.
   *  @param {Core.Vector2} texA
   *  @param {Core.Vector2} texB
   *  @param {Core.Vector2} texC
   *  @param {Core.Vector2} texD
   */
  public function pushQuadUVs(texA: Vector2, texB: Vector2, texC: Vector2, texD: Vector2): Void;

  /**
   *  Update uvs buffer geometry attribute.
   */
  public function updateUVs(): Void;

  /**
   *  Update vertices, indices, and uvs buffer geometry attributes.
   */
  public function updateAttributes(): Void;
}
