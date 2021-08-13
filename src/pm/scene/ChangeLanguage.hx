package pm.scene;

import pm.core.Picture2D;
import pm.core.WindowBox;
import pm.core.WindowChoices;

/** @class
 *  A scene for the language setting.
 *  @extends Scene.Base
 */
@:native('ChangeLanguage')
@:js.import('../../System/Scene/Battle.js')
extern class ChangeLanguage extends Base {
  function new();
  var pictureBackground: Picture2D;
  var windowBoxLanguage: WindowBox;
  var windowBoxTop: WindowBox;
  var windowChoicesMain: WindowChoices;
  var windowBoxConfirm: WindowBox;
  var windowChoicesConfirm: WindowChoices;
  var step: Float;

  /**
    Create all the windows in the scene.
  **/
  function createAllWindows(): Void;

  /**
    Create the window language on top.
  **/
  function createWindowBoxLanguage(): Void;

  /**
    Create the window information on top.
  **/
  function createWindowBoxTop(): Void;

  /**
    Create the window information on top.
  **/
  function createWindowChoicesMain(): Void;

  /**
    Create the window confirmation.
  **/
  function createWindowBoxConfirm(): Void;

  /**
    Create the window information on top.
  **/
  function createWindowChoicesConfirm(): Void;

  /**
    Create background stuff.
  **/
  function createBackground(): js.lib.Promise<Void>;

  static var prototype: ChangeLanguage;
}
