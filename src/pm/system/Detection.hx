package pm.system;

import pm.core.Position;

extern class Detection extends Base {
  function new(?json: {});
  var boxes: Array<ts.Tuple3<Position, Float, Float>>;

  /**
    Check the collision between sender and object.
  **/
  function checkCollision(sender: MapObject, object: MapObject): Bool;

  /**
    Get the sender bounding box.
  **/
  function getBoundingBoxes(sender: MapObject): Array<Array<Float>>;

  static var prototype: Detection;
}
