package pm.system;

import pm.core.Types.AnimationFrameJSON;
import js.three.Vector2;
import pm.core.Picture2D;
import pm.core.Enums.AnimationEffectConditionKind;

/** @class
 *   An animation frame
 *   @param {AnimationFrameJSON} [json=undefined] Json object describing the animation frame
 */
@:native('AnimationFrame')
extern class AnimationFrame extends BaseSystem {
  public var elements: Array<AnimationFrameElements>;
  public var effects: Array<AnimationFrameEffect>;
  public function new(?json: AnimationFrameJSON): Void;

  /** Read the JSON associated to the animation frame
   * @param {AnimationFrameJSON} json Json object describing the animation frame
   */
  public function read(json: AnimationFrameJSON): Void;

  /** Play the sounds according to condition
   * @param {AnimationEffectConditionKind} condition The condition
   */
  public function playSounds(condition: AnimationEffectConditionKind): Void;

  public function draw(picture: Picture2D, position: Vector2, rows: Int, cols: Int): Void;
}
