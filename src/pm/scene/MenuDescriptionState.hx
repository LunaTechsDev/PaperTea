package pm.scene;

/**
  The scene menu describing players statistics.
**/
@:native('MenuDescriptionState')
@:js.import('../../System/Scene/MenuDescriptionState.js')
extern class MenuDescriptionState extends MenuBase {
  /**
    Creates an instance of MenuDescriptionState.
  **/
  function new();

  /**
    the top window
  **/
  var windowTop: WindowBox;

  /**
    the choices tabs window
  **/
  var windowChoicesTabs: WindowChoices;

  /**
    the information window
  **/
  var windowInformation: WindowBox;

  /**
    create all the windows in the scene.
  **/
  function createAllWindows(): Void;

  /**
    create the top window.
  **/
  function createWindowTop(): Void;

  /**
    create the tab window containing the heros.
  **/
  function createWindowTabs(): Void;

  /**
    create the information window
  **/
  function createWindowInformation(): Void;

  /**
    Synchronize information's with the selected hero.
  **/
  function synchronize(): Void;

  /**
    Handle scene reactions when a key is pressed and repeated
  **/
  function onKeyPressedAndRepeat(key: Float): Bool;

  static var prototype: MenuDescriptionState;
}
