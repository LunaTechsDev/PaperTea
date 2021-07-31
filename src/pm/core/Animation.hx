package pm.core;

import pm.core.Enums.AnimationEffectConditionKind;

extern class Animation {
  function new(id: Float, ?loop: Bool);
  var system: Dynamic;
  var picture: Picture2D;
  var frame: Float;
  var loop: Bool;

  /**
    Update frame.
  **/
  function update(): Void;

  /**
    Draw the animation on top of battler.
  **/
  function playSounds(conditionKind: AnimationEffectConditionKind): Void;

  /**
    Draw the animation on top of battler.
  **/
  function draw(battler: Battler): Void;

  static var prototype: Animation;
}
