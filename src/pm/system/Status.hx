package pm.system;

/** @class
 *  A possible status hero.
 *  @extends System.Base
 *  @param {Record<string, any>} - json Json object describing the object state
 */
@:native('Status')
@:js.import('../../System/System/Status.js')
extern class Status extends Icon {
  function new(?json: {});
  var id: Float;
  var animationID: DynamicValue;
  var restrictionKind: pm.core.Enums.StatusRestrictionsKind;
  var priority: DynamicValue;
  var battlerPosition: DynamicValue;
  var isReleaseAtEndBattle: Bool;
  var isReleaseAfterAttacked: Bool;
  var chanceReleaseAfterAttacked: DynamicValue;
  var isReleaseStartTurn: Bool;
  var releaseStartTurn: Array<StatusReleaseTurn>;
  var messageAllyAffected: DynamicValue;
  var messageEnemyAffected: DynamicValue;
  var messageStatusHealed: DynamicValue;
  var messageStatusStillAffected: DynamicValue;
  var effects: Array<Effect>;
  var characteristics: Array<Characteristic>;

  /**
    Read the JSON associated to the status.
  **/
  function read(json: {}): Void;

  /**
    Get all the effects, including the ones with perform skill efect.
  **/
  function getEffects(): Array<Effect>;

  static var prototype: Status;
}
