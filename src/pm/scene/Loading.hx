package pm.scene;

import pm.graphic.Text;

/** @class
 *   A scene for the loading.
 *   @extends SceneGame
 */
@:native('Loading')
@:js.import('../../System/Scene/Loading.js')
extern class Loading {
  function new();
  var text: Text;

  /**
    Draw the HUD scene
  **/
  function drawHUD(): Void;

  static var prototype: Loading;
  static final MIN_DELAY: Float;
}
