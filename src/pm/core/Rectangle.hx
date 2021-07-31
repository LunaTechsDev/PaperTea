package pm.core;

@:native('Rectangle')
extern class Rectangle {
  public var x: Float;
  public var y: Float;
  public var width: Float;
  public var height: Float;

  public var anchor: Anchor2D;
  public function new(x: Float = 0, y: Float = 0, width: Float = 10, height: Float = 10): Void;

  /**
   * Moves the rectangle to a new x and y location.
   * @param x
   * @param y
   */
  public function move(x: Float, y: Float): Void;

  /**
   * Resizes the rectangle using width and height
   * @param width
   * @param height
   */
  public function resize(width: Float, height: Float): Void;

  /**
   * Sets the x, y, width, and height of the rectangle.
   * @param x
   * @param y
   * @param width
   * @param height
   */
  public function set(x: Float, y: Float, width: Float, height: Float): Void;

  /**
   * Sets the anchor using an x and y value.
   * @param x
   * @param y
   */
  public function setAnchor(x: Float, y: Float): Void;

  /**
   * Presets the anchor using x and y value.
   * @param anchorPreset
   */
  public function presetAnchor(anchorPreset: {x: Float, y: Float}): Void;
}
