package pm.eventcommand;

import pm.system.MapObject;
import pm.system.DynamicValue;

@:native('MoveCamera')
@:js.import('../../System/EventCommand/MoveCamera.js')
extern class MoveCamera extends Base {
  function new(command: Array<Dynamic>);
  var targetID: DynamicValue;
  var operation: Float;
  var moveTargetOffset: Bool;
  var cameraOrientation: Bool;
  var x: DynamicValue;
  var xSquare: Bool;
  var y: DynamicValue;
  var ySquare: Bool;
  var z: DynamicValue;
  var zSquare: Bool;
  var rotationTargetOffset: Bool;
  var h: DynamicValue;
  var v: DynamicValue;
  var distance: DynamicValue;
  var isWaitEnd: Bool;
  var time: DynamicValue;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: MoveCamera;
}
