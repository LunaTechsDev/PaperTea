package pm.core;

import pm.core.Types.WindowBoxOptions;

/**
  The class for window boxes.
**/
@:native('WindowBox')
@:js.import('../../System/Core/WindowBox.js')
extern class WindowBox extends Bitmap {
  function new(x: Float, y: Float, w: Float, h: Float, ?options: WindowBoxOptions);
  var content: Dynamic; // TODO: Turn into Graphic Base
  var padding: Array<Float>;
  var limitContent: Bool;
  var bordersOpacity: Float;
  var backgroundOpacity: Float;
  var selected: Bool;
  var bordersVisible: Bool;
  var contentDimension: Array<Float>;
  var windowDimension: Array<Float>;

  /**
    Set the x value.
  **/
  function setX(x: Float): Void;

  /**
    Set the y value.
  **/
  function setY(y: Float): Void;

  /**
    Set the w value.
  **/
  function setW(w: Float): Void;

  /**
    Set the h value.
  **/
  function setH(h: Float): Void;

  /**
    Update the content and window dimensions.
  **/
  function updateDimensions(): Void;

  /**
    Update the content.
  **/
  function update(): Void;

  /**
    Draw the window.
  **/
  function draw(?isChoice: Bool, ?windowDimension: Array<Float>, ?contentDimension: Array<Float>): Void;

  static var prototype: WindowBox;
  static final NONE_PADDING: Array<Float>;
  static final VERY_SMALL_PADDING_BOX: Array<Float>;
  static final SMALL_PADDING_BOX: Array<Float>;
  static final MEDIUM_PADDING_BOX: Array<Float>;
  static final HUGE_PADDING_BOX: Array<Float>;
  static final DIALOG_PADDING_BOX: Array<Float>;
  static final SMALL_SLOT_PADDING: Array<Float>;
  static final SMALL_SLOT_HEIGHT: Int;
  static final LARGE_SLOT_WIDTH: Int;
  static final MEDIUM_SLOT_WIDTH: Int;
  static final SMALL_SLOT_WIDTH: Int;
  static final MEDIUM_SLOT_HEIGHT: Int;
  static final LARGE_SLOT_HEIGHT: Int;
}
