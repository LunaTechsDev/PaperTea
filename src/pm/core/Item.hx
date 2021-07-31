package pm.core;

import pm.core.Enums.ItemKind;

extern class Item {
  function new(kind: ItemKind, id: Float, nb: Float, ?shop: Dynamic);
  var kind: ItemKind;
  var system: Dynamic;
  var nb: Float;
  var shop: Dynamic;

  /**
    The json save.
  **/
  function getSave(): {};

  /**
    Remove item from inventory.
  **/
  function remove(nb: Float): Bool;

  /**
    Add item in inventory.
  **/
  function add(nb: Float): Void;

  /**
    Modify items only if already in inventory.
  **/
  function modifyItems(callback: haxe.Constraints.Function): Bool;

  /**
    Modify the number of the item
  **/
  function equalItems(): Void;

  /**
    Add the number of the item
  **/
  function addItems(): Void;

  /**
    Remove the number of the item
  **/
  function removeItems(): Void;

  /**
    Multiply the number of the item
  **/
  function multItems(): Void;

  /**
    Modify the number of the item
  **/
  function divItems(): Void;

  /**
    Modulo the number of the item
  **/
  function moduloItems(): Void;

  /**
    Use one item and check if there is at least one item left
  **/
  function use(): Bool;

  /**
    Get the max value you could buy from this item shop.
  **/
  function getMaxBuy(): Float;

  /**
    Use the currencies to buy this shop item and indicates if the shop item
    need to be removed.
  **/
  function buy(shopID: Float, times: Float): Bool;

  /**
    Get the currencies to sell this item and indicates if the item need to
    be removed from list.
  **/
  function sell(times: Float): Bool;

  static var prototype: Item;

  /**
    Find an item in the inventory.
  **/
  static function findItem(kind: ItemKind, id: Float): Item;
}
