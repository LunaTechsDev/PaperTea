package pm.system;

import pm.core.Types.AnimationFrameEffectJSON;
import pm.core.Enums.AnimationEffectConditionKind;

/** 
 *   An animation frame effect
 */
extern class AnimationFrameEffect extends BaseSystem {
  /**
   * IsSE Indicate if the effect is a sound effect
   */
  public var isSE: Bool;

  /**
   * SE The sound effect to play
   */
  public var se: PlaySong;

  /**
   * Condition the animation effect condition
   */
  public var condition: AnimationEffectConditionKind;

  public function new(?json: AnimationFrameEffectJSON): Void;

  public function setup(): Void;

  /** Read the JSON associated to the animation frame effect
   * @param {Object} json Json object describing the animation frame effect
   */
  public function read(json: AnimationFrameEffectJSON): Void;

  /** 
   * Play the sound effect according to a condition
   * @param {AnimationEffectConditionKind} condition The animation effect
   * condition kind
   */
  public function playSE(condition: AnimationEffectConditionKind): Void;
}
