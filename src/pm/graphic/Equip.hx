package pm.graphic;

/** @class
 *  The graphic displaying all the equipment information in the equip menu.
 *  @extends Graphic.Base
 *  @param {Player} player - The current selected player
 *  @param {number} id - The equipment ID
 *  @param {number} length - Max length of equipment kind name
 */
@:native('Equip')
@:js.import('../../System/Graphic/Equip.js')
extern class Equip extends Base {
  function new(player: pm.core.Player, id: Float, length: Float, isPossible: Bool);
  var length: Float;
  var isPossible: Bool;
  var graphicEquipmentName: Dynamic;
  var graphicEquipment: Dynamic;

  /**
    Drawing the equipment kind and equipment name.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the equipment kind and equipment name.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: Equip;
}
