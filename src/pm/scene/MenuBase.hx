package pm.scene;

import pm.core.Player;

/**
  The superclass who handle menu related scenes
**/
@:native('MenuBase')
@:js.import('../../System/Scene/MenuBase.js')
extern class MenuBase extends Base {
  function new(args: haxe.extern.Rest<Dynamic>);

  /**
    The active hero id
  **/
  private var _activeHero: Float;

  /**
    Return the whole party array.
  **/
  function party(): Array<Player>;

  /**
    Return the current active hero.
  **/
  function hero(): Player;

  /**
    Return the current active hero index.
  **/
  function heroID(): Float;

  /**
    set the active hero index.
  **/
  function setActiveHero(id: Float): Void;

  /**
    Return a array of the party graphics
  **/
  function partyGraphics(): Array<Dynamic>;

  /**
    Return the active hero graphics.
  **/
  function heroGraphics(): Dynamic;

  /**
    Handle scene reactions when a key is pressed and repeated
  **/
  function onKeyPressedAndRepeat(key: Float): Dynamic;

  static var prototype: MenuBase;

  /**
    the slots to display in a menu.
  **/
  static var SLOTS_TO_DISPLAY: Float;
}
