package pm.common;

import js.three.Vector3;

@:native('Mathf')
@:js.import('../../System/Common/Mathf.js')
extern class Mathf {
  public static function isEmpty(array: Array<Any>): Bool;

  /** Get the cos
   * @param num The float value
   * @return Float
   */
  public static function cos(num: Float): Float;

  /** Get the sin
   * @param num Float value
   * @returns {Float}
   */
  public static function sin(num: Float): Float;

  /**
   * Get portion according to a position
   * @param position Vector3
   * @return Float[]
   */
  public static function getPortion(position: Vector3): Array<Float>;

  /** Get portion according to array position
   * @param position Float[]
   * @returns Float[]
   */
  public static function getPortionArray(position: Array<Float>): Array<Float>;

  /** 
   * Get an array position according to position
   * @param position  Vector3 - The position
   * @return Float[]
   */
  public static function getPosition(position: Vector3): Array<Float>;

  /**
   * Give a modulo without a negative value
   * @param x Float
   * @param m Float
   * @return Float */
  public static function mod(x: Float, m: Float): Float;

  /**
   * Get the max ID from a list of IDs
   * @param list list of only IDs
   * @return Int the max ID
   */
  public static function getMaxID(list: Array<Int>): Int;

  /**
   * GCreate a random number between min and max
   * @param min
   * @param max
   * @return Float
   */
  public static function random(min: Float, max: Float): Float;

  /**
   * Clamp a number between two values.
   * @param value Float
   * @param min min Float
   * @param max max Float
   * @return Float
   */
  public static function clamp(value: Float, min: Float, max: Float): Float;

  /**
   * Get a random value according to the value entered and the variance.
   * @param value
   * @param variance
   * @return Float
   */
  public static function variance(value: Float, variance: Float): Float;
}
