package pm.scene;

import pm.core.Picture2D;

/** @class
 *  A scene in the menu for loading a game.
 *  @extends Scene.SaveLoadGame
 */
@:native('LoadGame')
@:js.import('../../System/Scene/LoadGame.js')
extern class LoadGame extends SaveLoadGame {
  function new();
  var pictureBackground: Picture2D;
  function loadGame(): js.lib.Promise<Void>;
  static var prototype: LoadGame;
}
