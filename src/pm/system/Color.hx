package pm.system;

import js.three.Vector4;
import pm.core.Types.ColorJSON;
import js.three.Vector3;

@:native('Color')
extern class Color extends BaseSystem {
  public var red: Float;
  public var green: Float;
  public var blue: Float;
  public var alpha: Float;
  public var rgb: String;

  /** 
   * Create a new color according to RGBA values
   *   @static
   * @param {Float} r The red color between 0 and 255
   * @param {Float} g The green color between 0 and 255
   * @param {Float} b The blue color between 0 and 255
   * @param {Float} a The alpha value between 0 and 255
   * @return {Color}
   */
  public static function createColor(r: Float, g: Float, b: Float, a: Float): Color;

  /** 
   * Used for mixing vectors according to alpha in getHex algorithm
   *   @static
   * @param {THREE.Vector3} x The x position
   * @param {THREE.Vector3} y The y position
   * @param {Float} The alpha value between 0 and 1
   * @return {THREE.Vector3}
   */
  public static function mix(x: Vector3, y: Vector3, alpha: Float): Vector3;

  /** 
   * Initialize the color according to RGBA values
   *   @param {Float} r The red color between 0 and 255
   *   @param {Float} g The green color between 0 and 255
   *   @param {Float} b The blue color between 0 and 255
   *   @param {Float} a The alpha value between 0 and 255
   */
  public function initialize(r: Float, g: Float, b: Float, alpha: Float = 255): Void;

  public function read(json: ColorJSON): Void;

  /**
   * @param {Vector4} tone
   * @return String
   */
  public function getHex(tone: Vector4): String;

  /**
   * Return the color green.
   * @returns {Color}
   */
  public static function green(): Color;

  /**
   * Return the color red.
   * @returns {Color}
   */
  public static function red(): Color;

  /**
   * Return the color white.
   * @returns {Color}
   */
  public static function white(): Color;

  /**
   * Return the color black.
   * @returns {Color}
   */
  public static function black(): Color;
}
