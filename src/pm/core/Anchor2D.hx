package pm.core;

typedef AnchorPos = {x: Float, y: Float}

extern class Anchor2D {
  /**
   * ```js
   * { x: 0, y: 1 };
   * ```
   */
  public static final MIDDLE_TOP: AnchorPos;

  /**
   * ```js
   *  { x: 0.5, y: 0.5 }
   * ```
   */
  public static final MIDDLE: AnchorPos;

  /**
   * ```js
   *  { x: 0.5, y: 0 };
   * ```
   */
  public static final MIDDLE_BOTTOM: AnchorPos;

  /**
   * ```js
   *  { x: 0, y: 1 }
   * ```
   */
  public static final LEFT_TOP: AnchorPos;

  /**
   * ```js
   *  { x: 0, y: 0.5 }
   * ```
   */
  public static final LEFT_MIDDLE: AnchorPos;

  /**
   * ```js
   *  { x: 0, y: 0 };
   * ```
   */
  public static final LEFT_BOTTOM: AnchorPos;

  /**
   * ```js
   * { x: 1, y: 1 };
   * ```
   */
  public static final RIGHT_TOP: AnchorPos;

  /**
   * ```js
   * { x: 1, y: 0.5 };
   * ```
   */
  public static final RIGHT_MIDDLE: AnchorPos;

  /**
   * ```js
   * { x: 1, y: 0 };
   * ```
   */
  public static final RIGHT_BOTTOM: AnchorPos;

  public var x: Float;
  public var y: Float;

  /**
   * The data class for 2D anchors
   * @param x the x anchors (capped from 0 to 1)
   * @param y the y anchors (capped from 0 to 1)
   */
  public function new(x: Float, y: Float): Void;

  /**
   * Set the anchors using object format. (can also use premade)
   * @param {x: Float, y: Float} anchorPos
   */
  public function set(anchorPos: AnchorPos): Void;
}
