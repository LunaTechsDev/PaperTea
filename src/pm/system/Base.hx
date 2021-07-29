package pm.system;

import haxe.DynamicAccess;

@:native('Base')
extern abstract class Base {
  /** 
   *  Assign the members
   *  @note was used due to Super calling method overwriting data with 
   *  inheritance call;
   *  @fix adjusted the args parameters to be flexible and accepts arguments
   */
  public function setup(...args: Dynamic): Void;

  /**
   *  Read the json data
   *  @param {Record<string, any>} - json
   */
  public function read(json: DynamicAccess<Dynamic>): Void;
}
