package pm.system;

import pm.core.Types.CameraPropertiesJSON;

extern class CameraProperties extends BaseSystem {
  /**
   * Distance between target position and camera position
   */
  public var distance: DynamicValue;

  /**
   * Horizontal angle between target and camera
   */
  public var horizontalAngle: DynamicValue;

  /**
   * Vertical angle between target and camera
   */
  public var verticalAngle: DynamicValue;

  /**
   * Target Offset X Position
   */
  public var targetOffsetX: DynamicValue;

  /**
   * Target Offset Y Position
   */
  public var targetOffsetY: DynamicValue;

  /**
   * Target Offset Z Position
   */
  public var targetOffsetZ: DynamicValue;

  /**
   * The current target X offset is square value
   */
  public var isSquareTargetOffsetX: Bool;

  /**
   * The current target Y offset is square value
   */
  public var isSquareTargetOffsetY: Bool;

  /**
   * The current target z offset is square value
   */
  public var isSquareTargetOffsetZ: Bool;

  /**
   * The field of view
   */
  public var fov: DynamicValue;

  /**
   * Near
   */
  public var near: DynamicValue;

  /**
   * Far
   */
  public var far: DynamicValue;

  public function new(?json: CameraPropertiesJSON): Void;

  public function setup(): Void;

  /** Read the JSON associated to the camera properties
   * @param {CameraPropertiesJSON} json Json object describing the camera properties
   */
  public function read(json: CameraPropertiesJSON): Void;

  /** 
   * Initialize a camera according this system properties
   * @param {Camera} camera The camera
   */
  public function initializeCamera(camera: Camera): Void;
}
