package pm.core;

import js.html.Image;
import pm.core.Enums.PictureKind;
import js.lib.Promise;
import pm.system.SystemPicture;

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
  public var image: Image; // What will this be?
  public var centered: Bool;
  public var reverse: Bool;

  public function new(path: String = '', x: Float = 0, y: Float = 0, width: Float = 0, height: Float = 0): Void;

  /** Create a picture and then load it
   *   @static
   *   @async
   *   @param {SystemPicture} picture The picture to load
   *   @param {number} x The x position
   *   @param {number} y The y position
   *   @param {number} w(width) The w size
   *   @param {number} h(height) The h size
   */
  public static function create(pic: SystemPicture, x: Float = 0, y: Float = 0, width: Float = 0,
    height: Float = 0): Promise<Picture2D>;

  public static function createWithID(id: Int, kind: PictureKind, x: Float = 0, y: Float = 0, width: Float = 0,
    height: Float = 0): Promise<Picture2D>;

  /** Load the image
   *   @static
   *   @param {string} path The image path
   */
  public static function loadImage(path: String): Promise<Image>;

  /** Load the picture and then check
   */
  public function load(): Promise<Void>;

  /** Create a copy of a picture2D
   */
  public function createCopy(): Picture2D;

  /** Draw the picture on HUD
   *   @param {number} x The x position
   *   @param {number} y The y position
   *   @param {number} w(width) The w position
   *   @param {number} h(height) The h position
   *   @param {number} [sx=0] The source x position
   *   @param {number} [sy=0] The source x position
   *   @param {number} [sw=this.oW] The source width size
   *   @param {number} [sh=this.oH] The source height size
   *   @param {boolean} [positionResize=true] Indicate if the position resize
   *   (screen resolution)
   */
  public function draw(x: Float, y: Float, width: Float, height: Float, srcX: Float = 0, srcY: Float = 0,
    ?srcWidth: Float, ?srcHeight: Float, positionResize: Bool = true): Void;
}
