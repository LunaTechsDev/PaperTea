package pm.graphic;

/** @class
 *  The graphic displaying all the stats modifications in the equip menu.
 *  @extends Graphic.Base
 *  @param {Player} player - The current selected player
 *  @param {number[]} newValues - The new values of statistics with the
 *  equipment we are currently trying to equip. This array is empty if we are
 *  not trying to equip something
 */
@:native('EquipStats')
@:js.import('../../System/Graphic/EquipStats.js')
extern class EquipStats extends Base {
  function new(gamePlayer: pm.core.Player, newValues: Array<Float>, ?displayAll: Bool);
  var isChanging: Bool;
  var listStatsNames: Array<Text>;
  var listStats: Array<Text>;
  var listNewStats: Array<Text>;
  var nameLength: Float;
  var valueLength: Float;
  var graphicArrow: Text;
  var arrowLength: Float;
  var displayAll: Bool;

  /**
    Drawing the statistics modifications.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the statistics modifications.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: EquipStats;
}
