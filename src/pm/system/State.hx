package pm.system;

import pm.core.Enums.ObjectMovingKind;

/** @class
 *  A possible state of an object.
 *  @extends System.Base
 *  @param {Record<string, any>} - json Json object describing the object state
 */
extern class State extends Base {
  function new(?json: {});
  var id: Float;
  var graphicID: Float;
  var graphicKind: Float;
  var rectTileset: Array<Float>;
  var indexX: Float;
  var indexY: Float;
  var objectMovingKind: ObjectMovingKind;
  var route: Dynamic;
  var speedID: Float;
  var frequencyID: Float;
  var moveAnimation: Bool;
  var stopAnimation: Bool;
  var climbAnimation: Bool;
  var directionFix: Bool;
  var through: Bool;
  var setWithCamera: Bool;
  var pixelOffset: Bool;
  var keepPosition: Bool;
  var detection: Dynamic;

  /**
    Create a new instance of the System object state.
  **/
  function copyInstance(): {};

  static var prototype: State;
}
