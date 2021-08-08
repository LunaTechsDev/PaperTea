package pm.graphic;

import pm.core.Frame;
import pm.core.Picture2D;

/** @class
 *  The graphic displaying the player minimal stats informations.
 *  @extends Graphic.Base
 *  @param {Player} player - The current selected player
 *  @param {boolean} [reverse=false] - Indicate if the faceset should be reversed
 */
@:native('PlayerDescription')
@:js.import('../../System/Graphic/PlayerDescription.js')
extern class PlayerDescription extends Base {
  function new(player: pm.core.Player);
  var player: pm.core.Player;
  var graphicNameCenter: Text;
  var graphicName: Text;
  var graphicClass: Text;
  var graphicLevelName: Text;
  var graphicLevel: Text;
  var graphicExpName: Text;
  var graphicExp: Text;
  var listStatsNames: Array<Text>;
  var listStats: Array<Text>;
  var listLength: Array<Float>;
  var battler: Picture2D;
  var battlerFrame: Frame;
  var listStatsProgression: Array<Text>;
  var maxLength: Float;

  /**
    Initialize the statistic progression
  **/
  function initializeStatisticProgression(): Void;

  /**
    Update the statistic progression.
  **/
  function updateStatisticProgression(): Void;

  /**
    Update the battler frame.
  **/
  function updateBattler(): Void;

  /**
    Drawing the statistic progression.
  **/
  function drawStatisticProgression(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the player in choice box
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the player description
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: PlayerDescription;
}
