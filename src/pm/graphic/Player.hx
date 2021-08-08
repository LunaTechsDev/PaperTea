package pm.graphic;

import pm.system.CommonSkillItem;
import pm.core.Frame;
import pm.core.Picture2D;

/** @class
 *  The graphic displaying the player minimal stats informations.
 *  @extends Graphic.Base
 *  @param {Player} player - The current selected player
 *  @param {boolean} [reverse=false] - Indicate if the faceset should be reversed
 */
@:native('Player')
@:js.import('../../System/Graphic/Player.js')
extern class Player extends Base {
  /**
    * Constructor for Graphical Player
    * @param player 
    * @param __1 
    * ```
    * { isMainMenu = false, reverse = false }: {
          isMainMenu?: boolean, reverse?: boolean } = {}
    * ```
   */
  function new(player: pm.core.Player, ?__1: {@:optional var isMainMenu: Bool; @:optional var reverse: Bool;});

  var player: pm.core.Player;
  var reverse: Bool;
  var graphicName: Text;
  var graphicClass: Text;
  var graphicLevelName: Text;
  var graphicLevel: Text;
  var graphicExpName: Text;
  var graphicExp: Text;
  var listStatsNames: Array<Text>;
  var listStats: Array<Text>;
  var maxStatNamesLength: Float;
  var maxStatLength: Float;
  var faceset: Picture2D;
  var battler: Picture2D;
  var battlerFrame: Frame;
  var graphicLevelUp: Text;
  var displayNameLevel: Bool;
  var graphicStatShort: Text;
  var isMainMenu: Bool;

  /**
    Update the reverse value for faceset.
  **/
  function updateReverse(reverse: Bool): Void;

  /**
    Update experience graphics.
  **/
  function updateExperience(): Void;

  /**
    Initialize character graphics font size.
  **/
  function initializeCharacter(?noDisplayNameLevel: Bool): Void;

  /**
    Update battler frame.
  **/
  function updateBattler(): Void;

  /**
    Update stat short.
  **/
  function updateStatShort(weaponArmor: CommonSkillItem): Void;

  /**
    Update stat short to none.
  **/
  function updateStatShortNone(): Void;

  /**
    Drawing the character.
  **/
  function drawCharacter(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the player in choice box in the main menu.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the player informations in battles.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: Player;
}
