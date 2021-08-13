package pm.scene;

import pm.core.Picture2D;
import pm.core.WindowChoices;
import pm.core.WindowBox;

/** @class
 *  A scene for the keyboard assign setting.
 *  @extends Scene.Base
 */
@:native('KeyboardAssign')
@:js.import('../../System/Scene/KeyboardAssign.js')
extern class KeyboardAssign extends Base {
  function new();
  var pictureBackground: Picture2D;
  var windowKeyboard: WindowBox;
  var windowInformations: WindowBox;
  var windowChoicesMain: WindowChoices;
  var windowPress: WindowBox;
  var showPress: Bool;
  var currentSC: Array<Array<Float>>;
  var keysPressed: Array<Float>;
  var compareWait: Float;
  var waitTime: Float;
  var originalSC: Array<Array<Float>>;
  var nextOR: Bool;

  /**
    Update the key.
  **/
  function updateKey(): Bool;

  static var prototype: KeyboardAssign;
  static var WINDOW_PRESS_WIDTH: Float;
  static var WINDOW_PRESS_HEIGHT: Float;
  static var MAX_WAIT_TIME_FIRST: Float;
  static var MAX_WAIT_TIME: Float;
}
