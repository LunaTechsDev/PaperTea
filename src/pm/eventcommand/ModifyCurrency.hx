package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.MapObject;

/** @class
 *  An event command for modifying a currency value.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('ModifyCurrency')
@:js.import('../../System/EventCommand/ModifyCurrency.js')
extern class ModifyCurrency extends Base {
  function new(command: Array<Dynamic>);
  var currencyID: DynamicValue;
  var operation: Float;
  var value: DynamicValue;

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ModifyCurrency;
}
