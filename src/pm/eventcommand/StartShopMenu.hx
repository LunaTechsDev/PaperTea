package pm.eventcommand;

import pm.system.MapObject;
import pm.system.DynamicValue;

/** @class
 *  An event command for sarting shop menu.
 *  @extends EventCommand.Base
 *  @param {Object} command - Direct JSON command to parse
 */
@:native('StartShopMenu')
@:js.import('../../System/EventCommand/StartShopMenu.js')
extern class StartShopMenu extends Base {
  function new(command: Array<Dynamic>, ?isRestock: Bool);
  var buyOnly: DynamicValue;
  var shopID: DynamicValue;
  var items: Array<Dynamic>;
  var isRestock: Bool;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: StartShopMenu;
}
