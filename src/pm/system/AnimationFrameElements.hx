package pm.system;

import pm.core.Types.AnimationFEJSON;
import js.three.Vector2;
import pm.core.Picture2D;

/** @class
 *   An animation frame element
 */
extern class AnimationFrameElements extends BaseSystem {
  /**
   * X Position
   */
  public var x: Float;

  /**
   * Y Position
   */
  public var y: Float;

  /**
   * Texture Row
   */
  public var texRow: Int;

  /**
   * Texture Column
   */
  public var texCol: Int;

  /**
   * Zoom Value for the animation frame element
   */
  public var zoom: Float;

  /**
   * Angle Value
   */
  public var angle: Float;

  /**
   * Whether the texture is flipped
   */
  public var flip: Bool;

  public var opacity: Float;

  public function setup(): Void;

  /** 
   * Read the JSON associated to the animation frame element
   * @param {Object} json Json object describing the animation frame element
   */
  public function read(json: AnimationFEJSON): Void;

  /** 
   * Draw the animation element
   * @param {Picture2D} picture The picture associated to the animation
   * @param {THREE.Vector2} position The position on screen for animation
   * @param {rows} rows The number of rows in the animation texture
   * @param {number} cols The number of columns in the animation texture
   */
  public function draw(picture: Picture2D, position: Vector2, rows: Int, cols: Int): Void;
}
