package pm.core;

import pm.core.Enums.Align;

/** @class
 *  A status affected to a player.
 *  @param {number} id - The ID of the status
 */
extern class Status {
  function new(id: Float, ?turn: Float);
  var id: Float;
  var system: Dynamic;
  var turn: Float;
  var picture: Picture2D;

  /**
    Get message when ally affected.
  **/
  function getMessageAllyAffected(target: Battler): String;

  /**
    Get message when enemy affected.
  **/
  function getMessageEnemyAffected(target: Battler): String;

  /**
    Get message when healed.
  **/
  function getMessageHealed(target: Battler): String;

  /**
    Get message when still affected.
  **/
  function getMessageStillAffected(target: Battler): String;

  /**
    Draw the status on top of battler.
  **/
  function draw(x: Float, y: Float): Void;

  static var prototype: Status;

  /**
    Get message and replace target name.
  **/
  static function getMessage(message: Dynamic, target: Battler): String;

  /**
    Draw the status on top of battler.
  **/
  static function drawList(statusList: Array<Status>, x: Float, y: Float, ?align: Align): Void;
}
