package pm.system;

import pm.core.Enums.OperationKind;

/** @class
 *  A possible status release turn condition hero.
 *  @extends System.Base
 *  @param {Record<string, any>} - json Json object describing the object state
 */
extern class StatusReleaseTurn extends Base {
  function new(?json: {});
  var operationTurnKind: OperationKind;
  var turn: Dynamic;
  var chance: Dynamic;
  static var prototype: StatusReleaseTurn;
}
