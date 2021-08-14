package pm.scene;

import pm.core.WindowChoices;
import pm.core.Picture2D;
import pm.core.WindowBox;

/** @class
 *  A scene for the title screen settings.
 *  @extends Scene.Base
 */
@:native('TitleSettings')
@:js.import('../../System/Scene/BattleStartTurn.js')
extern class TitleSettings extends Base {
  function new();
  var pictureBackground: Picture2D;
  var windowSettings: WindowBox;
  var windowInformations: WindowBox;
  var windowChoicesMain: WindowChoices;
  static var prototype: TitleSettings;
}
