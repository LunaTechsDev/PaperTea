package pm.system;

/** @class
 *  A property of an object.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the
 *  property
 */
@:native('Property')
@:js.import('../../System/System/Property.js')
extern class Property extends Base {
  function new(?json: {});
  var id: Float;
  var initialValue: DynamicValue;
  static var prototype: Property;
}
