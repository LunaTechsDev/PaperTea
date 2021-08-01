package pm.core;

/**
 * @property {Float} x
 * @property {Float} y
 */
@:native('Vector2')
@:js.import('../../System/Core/Vector2.js')
extern class Vector2 { // Extends Three.Vector2
  public var x: Float;
  public var y: Float;

  /**
   * The data class who hold 2D coordinates.
   * @param {Float} x axis
   * @param {Float} y axis
   */
  public function new(x: Float = 0, y: Float = 0): Void;
}
