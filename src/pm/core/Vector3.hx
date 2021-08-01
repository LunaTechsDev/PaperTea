package pm.core;

/**
 * @property {Float} x
 * @property {Float} y
 * @property {Float} z
 * @property {Bool}
 */
@:native('Vector3')
@:js.import('../../System/Core/Vector3.js')
extern class Vector3 { // Extends Three.Vector3
  public var x: Float;
  public var y: Float;
  public var z: Float;

  /**
   * The data class who hold 3D Coordinate.
   * @param {Float} x the x-axis coordinate in float
   * @param {Float} y the y-axis coordinate in float
   * @param {Float} z the z-axis coordinate in float
   * @param {Bool} freeze whether or not to freeze the coordinates
   */
  public function new(x: Float = 0, y: Float = 0, z: Float = 0, freeze: Bool = false): Void;

  /**
   * Resets the x, y, z coordinates to zero.
   */
  public function reset(): Void;
}
