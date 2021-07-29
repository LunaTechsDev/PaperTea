package pm.common;

@:native('ScreenResolution')
extern class ScreenResolution {
  public static var SCREEN_X: Float;
  public static var SCREEN_Y: Float;
  public static var CAVAS_WIDTH: Float;
  public static var CANVAS_HEIGHT: Float;
  public static var WINDOW_X: Float;
  public static var WINDOW_Y: Float;

  /** Get the pixel position transformation according to screen size
   *   @static
   *   @param {Float} x - The position on screen
   *   @returns {Float}
   */
  public static function getScreenX(x: Float): Float;

  /** Get the pixel position transformation according to screen size
   *   @static
   *   @param {Float} y - The position on screen
   *   @returns {Float}
   */
  public static function getScreenY(y: Float): Float;

  /** Get the pixel position transformation according to screen size (reverse)
   *   @static
   *   @param {Float} x - The position on screen
   *   @returns {Float}
   */
  public static function getScreenXReverse(x: Float): Float;

  /** Get the pixel position transformation according to screen size (reverse)
   *   @static
   *   @param {Float} y - The position on screen
   *   @returns {Float}
   */
  public static function getScreenYReverse(y: Float): Float;

  /** Get the pixel position transformation according to screen size
   *   @static
   *   @param {Float} xy - The position on screen
   *   @returns {Float}
   */
  public static function getScreenXY(xy: Float): Float;

  /** Get the min pixel position transformation according to screen size
   *   @static
   *   @param {number} xy - The position on screen
   *   @returns {number}
   */
  public static function getScreenMinXY(xy: Float): Float;

  /** Get the pixel position transformation according to screen size, but
   *   without rounding it
   *   @static
   *   @param {number} x - The position on screen
   *   @returns {number}
   */
  public static function getDoubleScreenX(x: Float): Float;

  /** Get the pixel position transformation according to screen size, but
   *   without rounding it
   *   @static
   *   @param {Float} y - The position on screen
   *   @returns {Float}
   */
  public static function getDoubleScreenY(y: Float): Float;
}
