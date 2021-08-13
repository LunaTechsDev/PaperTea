package pm.scene;

import pm.core.WindowChoices;
import pm.core.WindowBox;

/**
  The menu scene displaying heroes equipments
**/
@:native('MenuEquip')
@:js.import('../../System/Scene/MenuEquip.js')
extern class MenuEquip extends MenuBase {
  function new();

  /**
    the top window
  **/
  var windowTop: WindowBox;

  /**
    the window choices tabs
  **/
  var windowChoicesTabs: WindowChoices;

  /**
    the equipment choice window
  **/
  var windowChoicesEquipment: WindowChoices;

  /**
    the window choice list
  **/
  var windowChoicesList: WindowChoices;

  /**
    the information window.
  **/
  var windowInformation: WindowBox;

  /**
    the current selected equipment.
  **/
  var selectedEquipment: Float;

  /**
    the equipment list
  **/
  var list: Array<Float>;

  /**
    the bonus stats.
  **/
  var bonus: Array<Float>;

  /**
    create all the window in the scene.
  **/
  function createAllWindows(): Void;

  /**
    create the top window
  **/
  function createWindowTop(): Void;

  /**
    create the choice tab window
  **/
  function createWindowChoiceTabs(): Void;

  /**
    create the equipment choice window
  **/
  function createWindowChoiceEquipment(): Void;

  /**
    create the choice window
  **/
  function createWindowChoiceList(): Void;

  /**
    create the information window
  **/
  function createWindowInformation(): Void;

  /**
    update the tab window
  **/
  function updateForTab(): Void;

  /**
    update the equipment list
  **/
  function updateEquipmentList(): Void;

  /**
    update the equipment stats display information.
  **/
  function updateInformations(): Void;

  /**
    Move tab according to key
  **/
  function moveTabKey(key: Float): Void;

  /**
    remove the selected equipment
  **/
  function remove(): Void;

  /**
    equip the selected equipment
  **/
  function equip(): Void;

  /**
    update the character stats
  **/
  function updateStats(): Void;

  /**
    Handle scene pressed and repeat key.
  **/
  function onKeyPressedAndRepeat(key: Float): Bool;

  static var prototype: MenuEquip;
}
