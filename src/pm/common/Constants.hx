package pm.common;

/**
 * Common class for constants and static functions
 */
@:native('Constants')
@:js.import('../../System/Common/Constants.js')
extern class Constants {
  /**
   * 8
   */
  public static var SMALL_FONT_SIZE: Int;

  /**
   * 10
   */
  public static var MEDIUM_FONT_SIZE: Int;

  /**
   * 32
   */
  public static var SQUARE_SIZE: Int;

  /**
   * 9
   */
  public static var BATTLER_STEPS: Int;

  /**
   * 30
   */
  public static var SMALL_SLOT_HEIGHT: Int;

  /**
   * 200
   */
  public static var MEDIUM_SLOT_WIDTH: Int;

  /**
   * 40
   */
  public static var MEDIUM_SLOT_HEIGHT: Int;

  /**
   * 60
   */
  public static var LARGE_SLOT_HEIGHT: Int;

  /**
   * 5
   */
  public static var MEDIUM_SPACE: Int;

  /**
   * 10
   */
  public static var LARGE_SPACE: Int;

  /**
   * 20
   */
  public static var HUGE_SPACE: Int;

  /**
   * 0
   */
  public static var PORTIONS_RAY_FAR: Int;

  /**
   * 16
   */
  public static var PORTION_SIZE: Int;

  /**
   * 4096
   */
  public static var MAX_PICTURE_SIZE: Int;

  /**
   * 640
   */
  public static var SCREEN_X: Int;

  /**
   * 480
   */
  public static var SCREEN_Y: Int;

  /**
   * [0, 0, 0, 0]
   */
  public static var NONE_PADDING: Array<Int>;

  /**
   * [5, 5, 5, 5]
   */
  public static var VERY_SMALL_PADDING_BOX: Array<Int>;

  /**
   * [10, 10, 10, 10]
   */
  public static var SMALL_PADDING_BOX: Array<Int>;

  /**
   * [20, 20, 20, 20]
   */
  public static var MEDIUM_PADDING_BOX: Array<Int>;

  /**
   * [30, 30, 30, 30]
   */
  public static var HUGE_PADDING_BOX: Array<Int>;

  /**
   * [30, 50, 30, 50]
   */
  public static var DIALOG_PADDING_BOX: Array<Int>;

  /**
   * [10, 5, 10, 5] */
  public static var SMALL_SLOT_PADDING: Array<Int>;

  /**
   * 1000
   */
  public static var ONE_SECOND_MILLI: Int;

  /**
   * 1
   */
  public static var NUM_BOOL_TRUE: Int;

  /**
   * 0
   */
  public static var NUM_BOOL_FALSE: Int;

  /**
   * 0.2
   */
  public static var COEF_TEX: Float;

  /**
   * 100
   */
  public static var LOADING_MIN_DELAY: Int;

  /**
   * hidden
   */
  public static var CLASS_HIDDEN: String;

  /**
   * rgba
   */
  public static var STRING_RGBA: String;

  /**
   * ""
   */
  public static var STRING_EMPTY: String;

  /**
   * (
   */
  public static var STRING_PARANTHESIS_LEFT: String;

  /**
   * )
   */
  public static var STRING_PARANTHESIS_RIGHT: String;

  /**
   * [
   */
  public static var STRING_BRACKET_LEFT: String;

  /**
   * ]
   */
  public static var STRING_BRACKET_RIGHT: String;

  /**
   * ,
   */
  public static var STRING_COMA: String;

  /**
   * :
   */
  public static var STRING_COLON: String;

  /**
   * /
   */
  public static var STRING_SLASH: String;

  /**
   * \n
   */
  public static var STRING_NEWLINE: String;

  /**
   * =
   */
  public static var STRING_EQUAL: String;

  /**
   * -
   */
  public static var STRING_DASH: String;

  /**
   * 0
   */
  public static var STRING_ZERO: String;

  /**
   * undefined
   */
  public static var UNDEFINED: String;

  /**
   * number
   */
  public static var NUMBER: String;

  /**
   * string
   */
  public static var STRING: String;

  /**
   * b
   */
  public static var TAG_BOLD: String;

  /**
   * i
   */
  public static var TAG_ITALIC: String;

  /**
   * l
   */
  public static var TAG_LEFT: String;

  /**
   * c
   */
  public static var TAG_CENTER: String;

  /**
   * r
   */
  public static var TAG_RIGHT: String;

  /**
   * size
   */
  public static var TAG_SIZE: String;

  /**
   * font
   */
  public static var TAG_FONT: String;

  /**
   * textcolor
   */
  public static var TAG_TEXT_COLOR: String;

  /**
   * backcolor
   */
  public static var TAG_BACK_COLOR: String;

  /**
   * strokecolor
   */
  public static var TAG_STROKE_COLOR: String;

  /**
   * var
   */
  public static var TAG_VARIABLE: String;

  /**
   * par
   */
  public static var TAG_PARAMETER: String;

  /**
   * pro
   */
  public static var TAG_PROPERTY: String;

  /**
   * hname
   */
  public static var TAG_HERO_NAME: String;

  /**
   * ico
   */
  public static var TAG_ICON: String;

  /**
   * sans-serif
   */
  public static var DEFAULT_FONT: String;

  /**
   * k
   */
  public static var JSON_KEY: String;

  /**
   * v
   */
  public static var JSON_VALUE: String;

  /**
   * .json
   */
  public static var EXTENSION_JSON: String;
}
