package pm.system;

import pm.core.Battler;
import pm.core.Enums.AnimationEffectConditionKind;
import pm.core.Types.AnimationJSON;
import pm.core.Picture2D;
import pm.core.Enums.AnimationPositionKind;

/**
 * An animation of a skill / item / weapon or for display animation command
 * @param {AnimationJSON} [json=undefined] Json object describing the animation
 */
extern class Animation extends BaseSystem {
  /**
   *  PictureID The animation picture ID
   */
  public var pictureID: Float;

  /**
   * PositionKind The animation position kin
   */
  public var positionKind: AnimationPositionKind;

  /**
   * Frames The System ANimation Frames by ID
   */
  public var frames: Array<AnimationFrame>;

  /**
   * The number of rows in the animation texture
   */
  public var rows: Int;

  /**
   * The number of columns in the animation texture
   */
  public var cols: Int;

  public function read(?json: AnimationJSON): Void;

  /**
   *  Create an animation picture copy
   * @return Picture2D
   */
  public function createPicture(): Picture2D;

  /** Play the sounds according to frame and condition
   * @param {Int} frame The frame
   * @param {AnimationEffectConditionKind} condition The condition
   */
  public function playSounds(frame: Int, condition: AnimationEffectConditionKind): Void;

  /** Draw the animation
   * @param {Picture2D} picture The picture associated to the animation
   * @param {number} frame The frame
   * @param {Battler} battler The battler target
   */
  public function draw(picture: Picture2D, frame: Int, battler: Battler): Void;
}
