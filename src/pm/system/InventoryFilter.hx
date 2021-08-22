package pm.system;

import pm.core.Enums.InventoryFilterKind;
import pm.core.Item;

/** @class
 *  An inventory filter used to filter inventory or shops items.
 *  @extends Translatable
 *  @param {Record<string, any>} [json=undefined] - Json object describing the item
 */
@:native('InventoryFilter')
@:js.import('../../System/System/InventoryFilter.js')
extern class InventoryFilter extends Translatable {
  function new(?json: {});
  var kind: InventoryFilterKind;
  var itemTypeID: Dynamic;
  var script: String;

  /**
    Get the filter function taking the item to filter and return true if
    pass filter.
  **/
  function getFilter(): (item: Item) -> Bool;
    static var prototype: InventoryFilter;
}
