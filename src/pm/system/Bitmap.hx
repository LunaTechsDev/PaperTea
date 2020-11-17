package pm.system;

/** @class
 *   A bitmap is something that can be drawn on the HUD. It can be a window,
 *   a text, an image...
 *   @property {number} x x coord of the bitmap
 *   @property {number} y y coord of the bitmap
 *   @property {number} w w coord of the bitmap
 *   @property {number} h h coord of the bitmap
 *   @param {number} [x=0] x coord of the bitmap
 *   @param {number} [y=0] y coord of the bitmap
 *   @param {number} [w=0] w coord of the bitmap
 *   @param {number} [h=0] h coord of the bitmap
 */
extern class Bitmap {
  public function new(x: Float = 0, y: Float = 0, width: Float = 0, height: Float = 0);

  /** Set the x value
   *   @param {number} x The x value
   *   @param {boolean} [min=false] If checked, transform screen value with min
   *   x y
   */
  public function setX(x: Float, min: Bool = false): Void;

  /** Set the y value
   *   @param {number} y The y value
   *   @param {boolean} [min=false] If checked, transform screen value with min
   *   x y
   */
  public function setY(y: Float, min: Bool = false): Void;

  /** Set the w value
   *   @param {number} w The w value
   *   @param {boolean} [min=false] If checked, transform screen value with min
   *   x y
   */
  public function setW(width: Float, min: Bool = false): Void;

  /** Set the h value
   *   @param {number} h The h value
   *   @param {boolean} [min=false] If checked, transform screen value with min
   *   x y
   */
  public function setH(height: Float, min: Bool = false): Void;

  /** Set the position to the left
   */
  public function setLeft(): Void;

  /** Set the position to the top
   */
  public function setTop(offset: Float): Void; // ? Should have an offset

  /** Set the position to the right
   */
  public function setRight(offset: Float): Void;

  /** Set the position to the bot
   */
  public function setBot(offset: Float): Void;

  /** Set all the coords values
   *   @param {number} x The x value
   *   @param {number} y The y value
   *   @param {number} w The w value
   *   @param {number} h The h value
   */
  public function setCoords(x: Float, y: Float, width: Float, height: Float): Void;
}
