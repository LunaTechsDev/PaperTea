package pm.core;

import pm.core.Types.CollisionSquareJSON;

extern class CollisionSquare {
  public var rect: Array<Float>;
  public var left: Bool;
  public var right: Bool;
  public var top: Bool;
  public var bot: Bool;

  public function read(json: CollisionSquareJSON): Void;

  /** Union of the collision squares
   *   @static
   *   @param {Float[][]} squares All the squares and their corresponding
   *   rects
   *   @param {Float} l The squares numbers
   *   @param {Float} w The number of squares width
   *   @param {Float} h The number of squares height
   *   @returns {Float[][]}
   */
  public static function unionSquares(squares: Array<Float>, length: Float, width: Float,
    height: Float): Array<Array<Float>>;

  /** Get the BB(BoundingBox) according to rect and size
   *
   *   @static
   *   @param {Float[]} rect The rect
   *   @param {Float} w The number of squares width
   *   @param {Float} h The number of squares height
   */
  public static function getBB(rect: Array<Float>, width: Float, height: Float): Array<Float>;

  /** Indicate if all the direction are OK
   *   @returns {Bool}
   */
  public function hasAllDirections(): Bool;
}
