package pm.core;

extern class Position extends Portion {
  function new(?x: Float, ?y: Float, ?z: Float, ?yPixels: Float, ?layer: Float, ?centerX: Float, ?centerZ: Float,
    ?angleY: Float, ?angleX: Float, ?angleZ: Float);
  var yPixels: Float;
  var layer: Float;
  var centerX: Float;
  var centerZ: Float;
  var angleY: Float;
  var angleX: Float;
  var angleZ: Float;

  /**
    Test if a position is equal to another.
  **/
  function equals(position: Position): Bool;

  /**
    Get the complete number of Y of a position.
  **/
  function getTotalY(): Float;

  /**
    Get the global portion of a json position.
  **/
  function getGlobalPortion(): Portion;

  /**
    Transform a position to a Vector3.
  **/
  function toVector3(?center: Bool): Vector3;

  /**
    Transform a position to index position on X/Z axis (used for map
    portion bounding boxes).
  **/
  function toIndex(): Float;

  static var prototype: Position;

  /**
    Create a position from an array.
  **/
  static function createFromArray(array: Array<Float>): Position;

  /**
    Create a position from a three.js vector3.
  **/
  static function createFromVector3(position: Vector3): Position;
}
