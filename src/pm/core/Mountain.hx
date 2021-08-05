package pm.core;

import js.three.Geometry;

/**
  A mountain in the map.
**/
@:native('Mountain')
@:js.import('../../System/Core/Mountain.js')
extern class Mountain extends MapElement {
  function new(?json: {});
  var mountainID: Float;
  var widthSquares: Float;
  var widthPixels: Float;
  var heightSquares: Float;
  var heightPixels: Float;
  var top: Bool;
  var bot: Bool;
  var left: Bool;
  var right: Bool;
  var angle: Float;

  /**
    Get the total squares width.
  **/
  function getTotalSquaresWidth(): Float;

  /**
    Get the total squares height.
  **/
  function getTotalSquaresHeight(yPlus: Float): Float;

  /**
    Get the squares number width with pixels plus.
  **/
  function getWidthOnlyPixelsPlus(): Float;

  /**
    Get the squares number height with pixels plus.
  **/
  function getHeightOnlyPixelsPlus(): Float;

  /**
    Get the total width in pixels.
  **/
  function getWidthTotalPixels(): Float;

  /**
    Get the total height in pixels.
  **/
  function getHeightTotalPixels(): Float;

  /**
    Get the System special element mountain.
  **/
  function getSystem(): Dynamic;

  /**
    Draw the entire faces.
  **/
  function drawEntireFaces(left: Bool, right: Bool, angle: Float, center: Dynamic, width: Float, height: Float,
    w: Float, faceHeight: Float, wp: Float, xLeft: Float, xRight: Float, yTop: Float, yBot: Float, zFront: Float,
    zBack: Float, yOffset: Float, vecFrontA: Vector3, vecBackA: Vector3, vecFrontB: Vector3, vecBackB: Vector3,
    geometry: Dynamic, count: Float): Float;

  /**
    Draw the side corner.
  **/
  function drawSideCorner(xKind: Float, yKind: Float, angle: Float, center: Vector3, width: Float, height: Float,
    w: Float, faceHeight: Float, wp: Float, xLeft: Float, xRight: Float, xLeftTop: Float, xRightTop: Float,
    xLeftBot: Float, xRightBot: Float, yTop: Float, yBot: Float, zFront: Float, zBack: Float, zFrontLeft: Float,
    zFrontRight: Float, zBackLeft: Float, zBackRight: Float, yOffset: Float, geometry: Dynamic, count: Float,
    xCornerOffsetTop: Float, xCornerOffsetBot: Float): Float;

  /**
    Draw a face.
  **/
  function drawFace(xKind: Float, yKind: Float, angle: Float, center: Dynamic, width: Float, height: Float, w: Float,
    faceHeight: Float, xLeftTop: Float, xRightTop: Float, xLeftBot: Float, xRightBot: Float, yTop: Float, yBot: Float,
    zFrontLeft: Float, zFrontRight: Float, zBackLeft: Float, zBackRight: Float, yOffset: Float, geometry: Dynamic,
    count: Float, xCornerOffsetTop: Float, xCornerOffsetBot: Float, isCorner: Bool): Float;

  /**
    Update the geometry of a group of mountains with the same material.
  **/
  function updateGeometry(geometry: Geometry, texture: TextureBundle, position: Position,
    count: Float): Array<Dynamic>;

  static var prototype: Mountain;
  static var X_LEFT_OFFSET: Float;
  static var X_MID_OFFSET: Float;
  static var X_RIGHT_OFFSET: Float;
  static var X_MIX_OFFSET: Float;
  static var Y_TOP_OFFSET: Float;
  static var Y_MID_OFFSET: Float;
  static var Y_BOT_OFFSET: Float;
  static var Y_MIX_OFFSET: Float;
}
