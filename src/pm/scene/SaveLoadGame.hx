package pm.scene;

import pm.core.WindowChoices;
import pm.core.WindowBox;

/** @class
 *  Abstract class for the game save and loading menus.
 *  @extends Scene.Base
 */
@:native('SaveLoadGame')
@:js.import('../../System/Scene/SaveLoadGame.js')
extern class SaveLoadGame extends Base {
  function new();
  var windowTop: WindowBox;
  var windowChoicesSlots: WindowChoices;
  var windowInformations: WindowBox;
  var windowBot: WindowBox;
  var gamesDatas: Array<Dynamic>;

  /**
    Initialize a game displaying.
  **/
  function initializeGame(game: pm.core.Game): Void; // Core From Game

  /**
    Set the contents in the bottom and top bars.
  **/
  function setContents(top: pm.graphic.Base, bot: pm.graphic.Base): Void;

  /**
    Update the information to display inside the save informations.
  **/
  function updateInformations(i: Float): Void;

  static var prototype: SaveLoadGame;
}
