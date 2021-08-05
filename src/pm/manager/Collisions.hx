package pm.manager;

import pm.core.MapPortion;
import pm.core.Position;
import pm.core.Types.StructMapElementCollision;
import pm.system.MapObject;
import pm.core.Vector3;

@:native('Collisions')
@:js.import('../../System/Manager/Collisions.js')
extern class Collisions {
  function new();
  static var prototype: Collisions;
  static var BB_MATERIAL: Dynamic;
  static var BB_BOX: Dynamic;
  static var BB_ORIENTED_BOX: Dynamic;
  static var BB_BOX_DETECTION: Dynamic;
  static var BB_BOX_DEFAULT_DETECTION: Dynamic;

  /**
    Create a box for bounding box.
  **/
  static function createBox(): Dynamic;

  /**
    Create an oriented box for bounding box.
  **/
  static function createOrientedBox(): Dynamic;

  /**
    Apply transform for lands bounding box.
  **/
  static function applyBoxLandTransforms(box: Dynamic, boundingBox: Array<Float>): Void;

  /**
    Apply transform for sprite bounding box.
  **/
  static function applyBoxSpriteTransforms(box: Dynamic, boundingBox: Array<Float>): Void;

  /**
    Apply transform for oriented bounding box.
  **/
  static function applyOrientedBoxTransforms(box: Dynamic, boundingBox: Array<Float>): Void;

  /**
    Indicate if min and max are overlapping.
  **/
  static function isOverlapping(minA: Float, maxA: Float, minB: Float, maxB: Float): Bool;

  /**
    Check collision between two OBB.
  **/
  static function obbVSobb(shapeA: Dynamic, shapeB: Dynamic): Bool;

  /**
    Check the faces for OBB collision.
  **/
  static function checkFaces(faces: Array<Dynamic>, verticesA: Array<Vector3>, verticesB: Array<Vector3>, lA: Float,
    lB: Float): Bool;

  /**
    Check if vertices overlap on one of the faces normal.
  **/
  static function overlapOnThisNormal(verticesA: Array<Vector3>, verticesB: Array<Vector3>, lA: Float, lB: Float,
    normal: Dynamic): Bool;

  /**
    Check collision ray.
  **/
  static function checkRay(positionBefore: Vector3, positionAfter: Vector3, object: MapObject): ts.Tuple2<Bool, Float>;

  /**
    Check if there is a collision at this position.
  **/
  static function check(mapPortion: MapPortion, jpositionBefore: Position, jpositionAfter: Position,
    positionAfter: Vector3, object: MapObject, direction: Vector3,
    testedCollisions: Array<StructMapElementCollision>): ts.Tuple2<Bool, Float>;

  /**
    Check if there is a collision with lands at this position.
  **/
  static function checkLands(mapPortion: MapPortion, jpositionBefore: Position, jpositionAfter: Position,
    object: MapObject, direction: Dynamic, testedCollisions: Array<StructMapElementCollision>): Bool;

  /**
    Check if there is a collision with lands with directions.
  **/
  static function checkLandsInside(mapPortion: MapPortion, jpositionBefore: Position, jpositionAfter: Position,
    direction: Vector3): Bool;

  /**
    Check intersection between ray and an object.
  **/
  static function checkIntersectionLand(collision: StructMapElementCollision, boundingBox: Array<Float>,
    object: MapObject): Bool;

  /**
    Check directions
  **/
  static function checkDirections(jpositionBefore: Position, jpositionAfter: Position,
    collision: StructMapElementCollision, boundingBox: Array<Float>, direction: Vector3, object: MapObject): Bool;

  /**
    Check directions inside.
  **/
  static function checkDirectionsInside(jpositionBefore: Position, jpositionAfter: Position,
    collision: StructMapElementCollision, direction: Dynamic): Bool;

  /**
    Check if there is a collision with sprites at this position.
  **/
  static function checkSprites(mapPortion: MapPortion, jpositionAfter: Position,
    testedCollisions: Array<StructMapElementCollision>, object: MapObject): Bool;

  /**
    Check intersection between ray and an object.
  **/
  static function checkIntersectionSprite(boundingBox: Array<Float>, fix: Bool, object: MapObject): Bool;

  /**
    Check if there is a collision with sprites at this position.
  **/
  static function checkObjects3D(mapPortion: MapPortion, jpositionAfter: Position,
    testedCollisions: Array<StructMapElementCollision>, object: MapObject): Bool;

  /**
    Check if there is a collision with mountains at this position.
  **/
  static function checkMountains(mapPortion: MapPortion, jpositionAfter: Position, positionAfter: Vector3,
    testedCollisions: Array<StructMapElementCollision>, object: MapObject): ts.Tuple2<Bool, Float>;

  /**
    Check if there is a collision with mountains at this position.
  **/
  static function checkMountain(mapPortion: MapPortion, jpositionAfter: Position, positionAfter: Vector3,
    testedCollisions: Array<StructMapElementCollision>, object: MapObject, objCollision: StructMapElementCollision,
    yMountain: Float, block: Bool): ts.Tuple3<Bool, Bool, Float>;

  /**
    Check intersection with a mountain.
  **/
  static function checkIntersectionMountain(mapPortion: MapPortion, jpositionAfter: Position, positionAfter: Vector3,
    objCollision: StructMapElementCollision, object: MapObject): ts.Tuple2<Bool, Float>;

  /**
    Check collision with objects.
  **/
  static function checkObjects(mapPortion: MapPortion, object: MapObject): Bool;

  /**
    Check collision with objects.
  **/
  static function checkObjectsList(list: Array<MapObject>, object: MapObject): Bool;
}
