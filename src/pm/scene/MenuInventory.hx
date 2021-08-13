package pm.scene;

import pm.core.WindowBox;
import pm.core.WindowChoices;
import pm.core.Types.StructPositionChoice;

@:native('MenuInventory')
@:js.import('../../System/Scene/MenuInventory.js')
extern class MenuInventory extends Base {
  function new();
  var windowTop: WindowBox;
  var windowChoicesTabs: WindowChoices;
  var windowChoicesList: WindowChoices;
  var windowBoxInformation: WindowBox;
  var windowEmpty: WindowBox;
  var windowBoxUseItem: WindowBox;
  var positionChoice: Array<StructPositionChoice>;
  var substep: Float;

  /**
    Create the choice list.
  **/
  function createWindowChoicesList(): Void;

  /**
    Create the information window.
  **/
  function createWindowBoxInformation(): Void;

  /**
    Create the user item window.
  **/
  function createWindowBoxUseItem(): Void;

  /**
    Update informations to display.
  **/
  function synchronize(): Void;

  /**
    Update tab.
  **/
  function updateForTab(): Void;

  /**
    Use the current item.
  **/
  function useItem(): Void;

  /**
    Move tab according to key.
  **/
  function moveTabKey(key: Float): Void;

  static var prototype: MenuInventory;
}
