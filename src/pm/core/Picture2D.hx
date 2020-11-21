package pm.core;

/** @class
 *   A class for pictures drawable in HUD
 *   @extends Bitmap
 *   @property {number} [zoom=1.0] The zoom value of the picture
 *   @property {number} [opacity=1.0] The opacity value of the picture
 *   @property {number} [angle=0.0] The angle value of the picture
 *   @property {boolean} [cover=false] Indicate if the picture cover the entire
 *   canvas
 *   @property {boolean} [stretch=false] Indicate if the picture is stretched if
 *   necessary
 *   @property {string} path The path to the ressource
 *   @property {boolean} loaded Indicate if the file is loaded
 *   @property {boolean} empty Indicate if the file is empty
 *   @param {string} [path=""] The path to the ressource
 *   @param {number} [x=0] Coords of the bitma
 *   @param {number} [y=0] Coords of the bitmap
 *   @param {number} [w=0] Coords of the bitmap
 *   @param {number} [h=0] Coords of the bitmap
 */
extern class Picture2D extends Bitmap {
  public var zoom: Float;
  public var opacity: Float;
  public var angle: Float;
  public var cover: Bool;
  public var stretch: Bool;
  public var path: String;
  public var loaded: Bool;
  public var empty: Bool;
  public var image: Any; // What will this be?
  public var centered: Bool;
  public var reverse: Bool;
}
