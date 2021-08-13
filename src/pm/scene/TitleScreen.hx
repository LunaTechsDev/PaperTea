package pm.scene;

import pm.core.WindowChoices;
import pm.core.Picture2D;

/**
  the Scene displaying the game title screen.
**/
@:native('TitleScreen')
@:js.import('../../System/Scene/TitleScreen.js')
extern class TitleScreen extends Base {
  function new();

  /**
    The title screen background image.
  **/
  var pictureBackground: Picture2D;

  /**
    The title screen command window.
  **/
  var windowChoicesCommands: WindowChoices;

  static var prototype: TitleScreen;
}
