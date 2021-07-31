package pm.common;

import js.lib.Promise;

@:native('Utils')
extern class Utils {
  /**
   * Return the default value if undefined.
   * @param value
   * @param defaultValue
   * @return T
   */
  public static function defaultValue<T>(value: Any, defaultValue: Any): T;

  /**
   * [Description]
   * @param func
   * @return Any
   */
  public static function tryCatch(func: Promise<Any->Any>): Promise<Any>;

  /**
   * check if typeof value is undefined.
   * @param value
   * @return Bool
   */
  public static function isUndefined(value: Any): Bool;

  /** 
   * Return a string of the date by passing all the seconds
   * @param Total  Total number of seconds
   * @returns String String version of the date
   */
  public static function getStringDate(total: Int): String;

  /** Return the string of a number and parse with 0 according to a given size
   * @param  Num The number
   * @param Max size Max number to display
   * @returns String String with zeros
   */
  public static function formatNumber(num: Float, max: Int): String;

  /**
   * Creates a new array initialized with null everywhere.
   * @param size
   * @return Array<Dynamic>
   */
  public static function fillNullList(size: Int): Array<Dynamic>;
}
