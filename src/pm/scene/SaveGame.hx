package pm.scene;

/** @class
 *  A scene in the menu for saving a game.
 *  @extends Scene.SaveLoadGame
 */
@:native('SaveGame')
@:js.import('../../System/Scene/SaveGame.js')
extern class SaveGame extends SaveLoadGame {
  function new();

  /**
    Save current game in the selected slot.
  **/
  function save(): js.lib.Promise<Void>;

  static var prototype: SaveGame;
}
