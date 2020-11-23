package pm.system;

import haxe.DynamicAccess;
import haxe.extern.Rest;

/**
 * The superclass that define all the System classes structure
 * @abstract
 */
// abstract class
@:native('BaseSystem')
extern class BaseSystem {
  /**
   *
   * @param {any} json
   * @param {any} args
   * @protected
   */
  public function new(?json: DynamicAccess<Dynamic>, args: Rest<Dynamic>): Void;

  /**
   * Assign the members
   * @note was used due to Super calling method overwriting data with inheritance call;
   * @fix adjusted the args parameters to be flexible and accepts arguments
   */
  // abstract
  public function setup(arg: Rest<Dynamic>): Void;

  /**
   * Read the json data
   * @param {Record<string, any>} json
   */
  // abstract
  public function read(?json: DynamicAccess<Dynamic>): Void;
}
