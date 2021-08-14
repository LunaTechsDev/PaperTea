package pm.scene;

import pm.core.Player;
import pm.core.Item;
import pm.graphic.SpinBox;
import pm.core.Types.StructPositionChoice;
import pm.core.WindowChoices;
import pm.core.WindowBox;

/**
  The scene handling and processing the shop system.
**/
@:native('MenuShop')
@:js.import('../../System/Scene/MenuShop.js')
extern class MenuShop extends MenuBase {
  function new(shopID: Float, buyOnly: Bool, stock: Array<Item>);
  var windowBoxTop: WindowBox;
  var windowChoicesBuySell: WindowChoices;
  var windowChoicesItemsKind: WindowChoices;
  var windowChoicesList: WindowChoices;
  var windowBoxInformation: WindowBox;
  var windowBoxEmpty: WindowBox;
  var windowBoxUseItem: WindowBox;
  var windowBoxOwned: WindowBox;
  var windowBoxCurrencies: WindowBox;
  var windowBoxConfirmEquip: WindowBox;
  var windowChoicesConfirmEquip: WindowChoices;
  var spinBox: SpinBox;
  var shopID: Float;
  var buyOnly: Bool;
  var stock: Array<Item>;
  var step: Float;
  var positionChoice: Array<StructPositionChoice>;
  var currentEquipmentID: Float;
  var currentList: Array<Float>;
  var currentBonus: Array<Float>;
  function initialize(shopID: Float, buyOnly: Bool, stock: Array<Item>): Void;

  /**
    Create all the windows.
  **/
  function createAllWindows(): Void;

  /**
    Create the top window.
  **/
  function createWindowBoxTop(): Void;

  /**
    Create the choice tab window buy/sell.
  **/
  function createWindowChoicesBuySell(): Void;

  /**
    Create the choice tab window for sorting items kind.
  **/
  function createWindowChoicesItemsKind(): Void;

  /**
    Create the choice list.
  **/
  function createWindowChoicesList(): Void;

  /**
    Create the information window.
  **/
  function createWindowBoxInformation(): Void;

  /**
    Create the empty window.
  **/
  function createWindowBoxEmpty(): Void;

  /**
    Create the user item window.
  **/
  function createWindowBoxUseItem(): Void;

  /**
    Create the owned items window.
  **/
  function createWindowBoxOwned(): Void;

  /**
    Create the currencies window.
  **/
  function createWindowBoxCurrencies(): Void;

  /**
    Create the currencies window.
  **/
  function createSpinBox(): Void;

  /**
    Create the confirm equip window.
  **/
  function createWindowBoxConfirmEquip(): Void;

  /**
    Create the confirm equip window choice.
  **/
  function createWindowChoicesConfirmEquip(): Void;

  /**
    Check if is in buy mode.
  **/
  function isBuy(): Bool;

  /**
    Get the current selected player.
  **/
  function getCurrentPlayer(): Player;

  /**
    Update items list.
  **/
  function updateItemsList(): Void;

  /**
    Update informations to display.
  **/
  function synchronize(): Void;

  /**
    Move tab according to key.
  **/
  function moveTabKey(key: Float): Void;

  /**
    Update the equipments stats when selecting a player.
  **/
  function updateEquipmentStats(): Void;

  /**
    Equip the selected equipment.
  **/
  function equip(shopItem: Item): Void;

  /**
    Handle scene pressed and repeat key.
  **/
  function onKeyPressedAndRepeat(key: Float): Bool;

  static var prototype: MenuShop;
}
