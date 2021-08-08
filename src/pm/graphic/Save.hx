package pm.graphic;

/** @class
 *  The graphic displaying a save.
 *  @extends Graphic.Base
 *  @param {Game} game
 */
@:native('Save')
@:js.import('../../System/Graphic/Save.js')
extern class Save extends Base {
  function new(game: Game); // TODO:Game.game

  var game: Game;
  var graphicSlot: Text;
  var graphicEmpty: Text;
  var graphicTimer: Text;
  var graphicPlayers: Array<Player>;

  /**
    Drawing the save slot.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the save informations.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: Save;
}
