package pm.common;

import js.lib.Object;
import electron.Record;
import js.lib.Promise;

/**
 * Static Input and Output class that 
 * handles loading and saving.
 */
@:native('IO')
extern class IO {
  /** 
   *  Check if a file exists.
   *  @static
   *  @param {string} url - The path of the file
   *  @returns {boolean}
   */
  public static function fileExists(url: String): Bool;

  /** 
   *  Open an existing file.
   *  @static
   *  @param {string} url - The path of the file
   *  @returns {string}
   */
  public static function openFile(url: String): Promise<String>;

  /** 
   *  Open and parse an existing file.
   * Please use typedefs on the result or
   * Haxe Dynamic Access
   *  @static
   *  @param {string} url - The path of the file
   *  @returns {Promise<Record<string, any>>}
   */
  public static function parseFileJSON(url: String): Promise<Record>;

  /** 
   *  Write a json file.
   *  @static
   *  @param {string} url - The path of the file
   *  @param {Object} obj - An object that can be stringified by JSON
   */
  public static function saveFile(url: String, obj: Object): Promise<Void>;
}
