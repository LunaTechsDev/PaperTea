package pm.core;

import pm.core.Enums.Orientation;
import pm.system.MapObject;

extern class Camera {
  function new(cameraProperties: Dynamic, target: MapObject);
  var system: Dynamic;
  var perspectiveCamera: Dynamic;
  var orthographicCamera: Dynamic;
  var isPerspective: Bool;
  var target: MapObject;
  var targetPosition: Vector3;
  var targetOffset: Vector3;
  var distance: Float;
  var horizontalAngle: Float;
  var verticalAngle: Float;

  /**
    Initialize the camera according to system camera properties.
  **/
  function initialize(): Void;

  /**
    Configure camera when resizing window.
  **/
  function resizeGL(): Void;

  /**
    Get the map orientation according to the camera.
  **/
  function getMapOrientation(): Orientation;

  /**
    Get the distance according to vertical angle.
  **/
  function getDistance(): Float;

  /**
    Get the height according to vertical angle.
  **/
  function getHeight(): Float;

  /**
    Get the horizontal angle between two positions.
  **/
  function getHorizontalAngle(p1: Vector3, p2: Vector3): Float;

  /**
    Get the vertical angle between two positions.
  **/
  function getVerticalAngle(p1: Vector3, p2: Vector3): Float;

  /**
    Add an angle to the horizontal angle.
  **/
  function addHorizontalAngle(a: Float): Void;

  /**
    Add an angle to the vertical angle.
  **/
  function addVerticalAngle(a: Float): Void;

  /**
    Update the target position according to target and target offset.
  **/
  function updateTargetPosition(): Void;

  /**
    Get the perspective or orthographic camera.
  **/
  function getThreeCamera(): Dynamic;

  /**
    Update the three.js camera position.
  **/
  function updateCameraPosition(): Void;

  /**
    Update target offset position.
  **/
  function updateTargetOffset(): Void;

  /**
    Update horizontal and vertical angles.
  **/
  function updateAngles(): Void;

  /**
    Update the distance.
  **/
  function updateDistance(): Void;

  /**
    Update the three.js camera view.
  **/
  function updateView(): Void;

  /**
    Update all the parameters.
  **/
  function update(): Void;

  static var prototype: Camera;
}
