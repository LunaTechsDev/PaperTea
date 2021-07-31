package pm.common;

/**
  The key event class used to convert Qt keys to web keys.
**/
// TODO: Convert all the numbers to Integers
extern class KeyEvent {
  function new();
  static var prototype: KeyEvent;
  static var keysPressed: Array<Float>;
  static var DOM_VK_CANCEL: Float;
  static var DOM_VK_HELP: Float;
  static var DOM_VK_BACK_SPACE: Float;
  static var DOM_VK_TAB: Float;
  static var DOM_VK_CLEAR: Float;
  static var DOM_VK_RETURN: Float;
  static var DOM_VK_ENTER: Float;
  static var DOM_VK_SHIFT: Float;
  static var DOM_VK_CONTROL: Float;
  static var DOM_VK_ALT: Float;
  static var DOM_VK_PAUSE: Float;
  static var DOM_VK_CAPS_LOCK: Float;
  static var DOM_VK_ESCAPE: Float;
  static var DOM_VK_SPACE: Float;
  static var DOM_VK_PAGE_UP: Float;
  static var DOM_VK_PAGE_DOWN: Float;
  static var DOM_VK_END: Float;
  static var DOM_VK_HOME: Float;
  static var DOM_VK_LEFT: Float;
  static var DOM_VK_UP: Float;
  static var DOM_VK_RIGHT: Float;
  static var DOM_VK_DOWN: Float;
  static var DOM_VK_PRINTSCREEN: Float;
  static var DOM_VK_INSERT: Float;
  static var DOM_VK_DELETE: Float;
  static var DOM_VK_0: Float;
  static var DOM_VK_1: Float;
  static var DOM_VK_2: Float;
  static var DOM_VK_3: Float;
  static var DOM_VK_4: Float;
  static var DOM_VK_5: Float;
  static var DOM_VK_6: Float;
  static var DOM_VK_7: Float;
  static var DOM_VK_8: Float;
  static var DOM_VK_9: Float;
  static var DOM_VK_SEMICOLON: Float;
  static var DOM_VK_EQUALS: Float;
  static var DOM_VK_A: Float;
  static var DOM_VK_B: Float;
  static var DOM_VK_C: Float;
  static var DOM_VK_D: Float;
  static var DOM_VK_E: Float;
  static var DOM_VK_F: Float;
  static var DOM_VK_G: Float;
  static var DOM_VK_H: Float;
  static var DOM_VK_I: Float;
  static var DOM_VK_J: Float;
  static var DOM_VK_K: Float;
  static var DOM_VK_L: Float;
  static var DOM_VK_M: Float;
  static var DOM_VK_N: Float;
  static var DOM_VK_O: Float;
  static var DOM_VK_P: Float;
  static var DOM_VK_Q: Float;
  static var DOM_VK_R: Float;
  static var DOM_VK_S: Float;
  static var DOM_VK_T: Float;
  static var DOM_VK_U: Float;
  static var DOM_VK_V: Float;
  static var DOM_VK_W: Float;
  static var DOM_VK_X: Float;
  static var DOM_VK_Y: Float;
  static var DOM_VK_Z: Float;
  static var DOM_VK_NUMPAD0: Float;
  static var DOM_VK_NUMPAD1: Float;
  static var DOM_VK_NUMPAD2: Float;
  static var DOM_VK_NUMPAD3: Float;
  static var DOM_VK_NUMPAD4: Float;
  static var DOM_VK_NUMPAD5: Float;
  static var DOM_VK_NUMPAD6: Float;
  static var DOM_VK_NUMPAD7: Float;
  static var DOM_VK_NUMPAD8: Float;
  static var DOM_VK_NUMPAD9: Float;
  static var DOM_VK_MULTIPLY: Float;
  static var DOM_VK_ADD: Float;
  static var DOM_VK_SEPARATOR: Float;
  static var DOM_VK_SUBTRACT: Float;
  static var DOM_VK_DECIMAL: Float;
  static var DOM_VK_DIVIDE: Float;
  static var DOM_VK_F1: Float;
  static var DOM_VK_F2: Float;
  static var DOM_VK_F3: Float;
  static var DOM_VK_F4: Float;
  static var DOM_VK_F5: Float;
  static var DOM_VK_F6: Float;
  static var DOM_VK_F7: Float;
  static var DOM_VK_F8: Float;
  static var DOM_VK_F9: Float;
  static var DOM_VK_F10: Float;
  static var DOM_VK_F11: Float;
  static var DOM_VK_F12: Float;
  static var DOM_VK_F13: Float;
  static var DOM_VK_F14: Float;
  static var DOM_VK_F15: Float;
  static var DOM_VK_F16: Float;
  static var DOM_VK_F17: Float;
  static var DOM_VK_F18: Float;
  static var DOM_VK_F19: Float;
  static var DOM_VK_F20: Float;
  static var DOM_VK_F21: Float;
  static var DOM_VK_F22: Float;
  static var DOM_VK_F23: Float;
  static var DOM_VK_F24: Float;
  static var DOM_VK_NUM_LOCK: Float;
  static var DOM_VK_SCROLL_LOCK: Float;
  static var DOM_VK_COMMA: Float;
  static var DOM_VK_PERIOD: Float;
  static var DOM_VK_SLASH: Float;
  static var DOM_VK_BACK_QUOTE: Float;
  static var DOM_VK_OPEN_BRACKET: Float;
  static var DOM_VK_BACK_SLASH: Float;
  static var DOM_VK_CLOSE_BRACKET: Float;
  static var DOM_VK_QUOTE: Float;
  static var DOM_VK_META: Float;
  static var SQUARE: Float;
  static var AMPERSAND: Float;
  static var E_ACCENT_RIGHT: Float;
  static var TILDE: Float;
  static var HASH: Float;
  static var APOSTROPHE: Float;
  static var LEFT_PARENTHESIS: Float;
  static var LEFT_BRACES: Float;
  static var RIGHT_BRACES: Float;
  static var E_ACCENT_LEFT: Float;
  static var UNDERSCORE: Float;
  static var C_UNDER: Float;
  static var CARAT: Float;
  static var A_ACCENT: Float;
  static var AT: Float;
  static var RIGHT_PARENTHESIS: Float;
  static var DEGREE: Float;
  static var TREMA: Float;
  static var CARAT_2: Float;
  static var POUND: Float;
  static var DOLLAR: Float;
  static var YEN: Float;
  static var U_GRAVE: Float;
  static var PERCENT: Float;
  static var MU: Float;
  static var QUESTION: Float;
  static var POINT: Float;
  static var COLON: Float;
  static var SECTION_SIGN: Float;
  static var EXCLAMATION: Float;
  static var ALT_GR: Float;
  static var LESS_THAN: Float;
  static var GREATER_THAN: Float;

  /**
    Convert Qt key to DOM.
  **/
  static function qtToDOM(key: Float): Float;

  /**
    Check if the pressed key is a PAD number.
  **/
  static function isKeyNumberPADPressed(key: Float): Bool;

  /**
    Check if the pressed key is a number with shift.
  **/
  static function isKeyNumberTopPressed(key: Float): Bool;

  /**
    Check if the pressed key is a number.
  **/
  static function isKeyNumberPressed(key: Float): Bool;

  /**
    Get the char associated to the key.
  **/
  static function getKeyChar(key: Float): String;

  /**
    Get the string associated to the key
  **/
  static function getKeyString(key: Float): String;
}
