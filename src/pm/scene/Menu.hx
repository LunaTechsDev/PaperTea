package pm.scene;

import pm.core.WindowBox;
import pm.core.WindowChoices;

/**
  The class who handle the scene menu in game.
**/
@:native('Menu')
@:js.import('../../System/Scene/Menu.js')
extern class Menu extends MenuBase {
  function new();
  var selectedOrder: Float;
  var windowChoicesCommands: WindowChoices;
  var windowChoicesTeam: WindowChoices;
  var windowTimeCurrencies: WindowBox;

  /**
    Create all the windows in the scene.
  **/
  function createAllWindows(): Void;

  /**
    Create the commands window
  **/
  function createCommandWindow(): Void;

  /**
    Create the team order window.
  **/
  function createTeamOrderWindow(): Void;

  /**
    Create the time and currencies window.
  **/
  function createWindowTimeCurrencies(): Void;

  /**
    return whether the key action is quitting to map and in window command.
  **/
  function isKeyQuittingToMap(key: Float): Bool;

  /**
    return whether the key action is quitting the order screen.
  **/
  function isKeyQuittingReorder(key: Float): Bool;

  /**
    function called when quitting the menu.
  **/
  function onQuitMenu(): Void;

  /**
    function called when quitting the team order selection.
  **/
  function onTeamUnselect(): Void;

  /**
    swap two hero index in the active team.
  **/
  function swapHeroOrder(id1: Float, id2: Float): Void;

  /**
    function executed when you choose the order command.
  **/
  function onTeamSelect(): Void;

  /**
    Handle scene reactions when a key is pressed and repeated
  **/
  function onKeyPressedAndRepeat(key: Float): Bool;

  static var prototype: Menu;
}
