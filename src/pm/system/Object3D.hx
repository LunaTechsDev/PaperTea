package pm.system;

import pm.core.Vector3;
import pm.core.Enums.ObjectCollisionKind;
import pm.core.Enums.ShapeKind;

/** @class
 *  A 3D object of the game.
 *  @extends System.SpecialElement
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  object 3D
 */
@:native('Object3D')
extern class Object3D extends SpecialElement {
  function new(?json: {});
  var id: Float;
  var shapeKind: ShapeKind;
  var objID: Float;
  var mtlID: Float;
  var collisionKind: ObjectCollisionKind;
  var collisionCustomID: Float;
  var scale: Float;
  var widthSquare: Float;
  var widthPixel: Float;
  var heightSquare: Float;
  var heightPixel: Float;
  var depthSquare: Float;
  var depthPixel: Float;
  var stretch: Bool;

  /**
    Get the width in pixels.
  **/
  function widthPixels(): Float;

  /**
    Get the height in pixels.
  **/
  function heightPixels(): Float;

  /**
    Get the depth in pixels.
  **/
  function depthPixels(): Float;

  /**
    Get the width in squares.
  **/
  function width(): Float;

  /**
    Get the height in squares.
  **/
  function height(): Float;

  /**
    Get the depth in squares.
  **/
  function depth(): Float;

  /**
    Get the size vector.
  **/
  function getSizeVector(): Vector3;

  /**
    Get the shape obj.
  **/
  function getObj(): Dynamic;

  static var prototype: Object3D;
}
