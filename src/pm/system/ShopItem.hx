package pm.system;

import pm.core.Enums.ItemKind;

extern class ShopItem extends Base {
  function new(?json: {});
  var selectionItem: ItemKind;
  var itemID: DynamicValue;
  var weaponID: DynamicValue;
  var armorID: DynamicValue;
  var selectionPrice: Bool;
  var specificPrice: Array<Cost>;
  var selectionStock: Bool;
  var specificStock: DynamicValue;
  var stock: Float;

  /**
    Parse command with iterator.
  **/
  function parse(command: Array<Dynamic>, iterator: StructIterator): Void;

  /**
    Get the item system.
  **/
  function getItem(): Dynamic;

  /**
    Get the price.
  **/
  function getPrice(): {};

  /**
    Get the initial stock.
  **/
  function getStock(): Float;

  /**
    Get the initial stock.
  **/
  function isPossiblePrice(): Bool;

  /**
    Get the max possible number you can buy.
  **/
  function getMax(initial: Float): Float;

  static var prototype: ShopItem;
}
