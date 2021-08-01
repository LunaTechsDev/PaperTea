package pm.system;

/** @class
 *  A parameter of a reaction.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  parameter value
 */
@:native('Parameter')
@:js.import('../../System/System/Picture.js')
extern class Parameter extends Base {
  function new(?json: {});
  var value: DynamicValue;
  var kind: Float;

  /**
    Read the JSON associated to the parameter default value.
  **/
  function readDefault(json: {}): Void;

  /**
    Check if the parameter is equal to another one
  **/
  function isEqual(parameter: Parameter): Bool;

  static var prototype: Parameter;

  /**
    Read the parameters.
  **/
  static function readParameters(json: {}): Array<Parameter>;

  /**
    Read the parameters with default values.
  **/
  static function readParametersWithDefault(json: {}, list: Array<Parameter>): Array<Parameter>;
}
