package pm.core;

import pm.core.Types.ChoicesOptions;
import pm.core.Enums.OrientationWindow;

/**
  The window class who handle choices.
**/
@:native('WindowChoices')
extern class WindowChoices extends Bitmap {
  function new(x: Float, y: Float, w: Float, h: Float, listContents: Array<Dynamic>, ?options: ChoicesOptions);
  var orientation: OrientationWindow;
  var nbItemsMax: Float;
  var padding: Array<Float>;
  var space: Float;
  var currentSelectedIndex: Float;
  var bordersInsideVisible: Bool;
  var bordersVisible: Bool;
  var offsetSelectedIndex: Float;
  var choiceWidth: Float;
  var choiceHeight: Float;
  var startTime: Float;
  var listContents: Array<Dynamic>;
  var listWindows: Array<WindowBox>;
  var listCallBacks: Array<haxe.Constraints.Function>;
  var windowMain: WindowBox;
  var size: Float;

  /**
    Set the x value.
  **/
  function setX(x: Float): Void;

  /**
    Set the y value.
  **/
  function setY(y: Float): Void;

  function updatePosition(): Void;

  /**
    Get the content at a specific index.
  **/
  function getContent(i: Float): Dynamic;

  /**
    Get the current selected content.
  **/
  function getCurrentContent(): Dynamic;

  /**
    Update content size according to all the current settings.
  **/
  function updateContentSize(?currentSelectedIndex: Float, ?offsetSelectedIndex: Float): Void;

  /**
    Set the content at a specific index.
  **/
  function setContent(i: Float, content: Dynamic): Void;

  /**
    Set all the graphic contents.
  **/
  function setContents(contents: Array<Dynamic>): Void;

  /**
    Set all the callbacks for each choice.
  **/
  function setCallbacks(callbacks: Array<haxe.Constraints.Function>): Void;

  /**
    Set all the contents and callbacks.
  **/
  function setContentsCallbacks(contents: Array<Dynamic>, ?callbacks: Array<haxe.Constraints.Function>,
    ?currentSelectedIndex: Float): Void;

  /**
    Unselect a choice.
  **/
  function unselect(): Void;

  /**
    Select a choice.
  **/
  function select(i: Float): Void;

  /**
    Select the current choice.
  **/
  function selectCurrent(): Void;

  /**
    Remove the current choice.
  **/
  function removeCurrent(): Void;

  /**
    Go cursor up.
  **/
  function goUp(): Void;

  /**
    Go cursor down.
  **/
  function goDown(): Void;

  /**
    First key press handle.
  **/
  function onKeyPressed(key: Float, ?base: Dynamic): Void;

  /**
    Key pressed repeat handle, but with a small wait after the first
    pressure (generally used for menus).
  **/
  function onKeyPressedAndRepeat(key: Float): Bool;

  /**
    Draw the windows.
  **/
  function draw(): Void;

  static var prototype: WindowChoices;
  static var TIME_WAIT_PRESS: Float;
}
