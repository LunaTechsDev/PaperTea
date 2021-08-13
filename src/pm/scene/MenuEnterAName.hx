package pm.scene;

import pm.core.Frame;
import pm.core.Picture2D;
import pm.core.WindowChoices;
import pm.core.WindowBox;
import pm.core.Player;

/**
  The scene handling and processing the enter a name menu
**/
@:native('MenuEnterAName')
@:js.import('../../System/Scene/MenuEnterAName.js')
extern class MenuEnterAName extends MenuBase {
  function new(heroInstanceID: Float, maxCharacters: Float);
  var windowChoicesTop: WindowChoices;
  var windowBoxMain: WindowBox;
  var windowChoicesMain: Array<WindowChoices>;
  var windowBoxOk: WindowBox;
  var pictureFaceset: Picture2D;
  var heroInstanceID: Float;
  var maxCharacters: Float;
  var rows: Float;
  var columns: Float;
  var displayRows: Float;
  var displayColumns: Float;
  var selectedhero: Player;
  var frameUnderscore: Frame;
  var currentRow: Float;
  var offsetRow: Float;
  var currentCharacterPosition: Float;
  function initialize(heroInstanceID: Float, maxCharacters: Float): Void;

  /**
    Create all the windows.
  **/
  function createAllWindows(): Void;

  /**
    Initialize all the datas.
  **/
  function initializeDatas(): Void;

  /**
    Create all the pictures.
  **/
  function createPictures(): Void;

  /**
    Create the top window.
  **/
  function createWindowBoxTop(): Void;

  /**
    Create main window box.
  **/
  function createWindowBoxMain(): Void;

  /**
    Create the top window.
  **/
  function createWindowChoicesMain(): Void;

  /**
    Create the ok window box.
  **/
  function createWindowBoxOk(): Void;

  /**
    Handle scene pressed and repeat key.
  **/
  function onKeyPressedAndRepeat(key: Float): Bool;

  static var prototype: MenuEnterAName;
  static var MAX_ROWS: Float;
  static var MAX_COLUMNS: Float;
}
