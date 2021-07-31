package pm.system;

/** @class
 *  A mountain of the game.
 *  @extends System.SpecialElement
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  mountain
 */
extern class Mountain extends SpecialElement {
  function new(?json: {});
  var id: Float;
  var collisionKind: Float;

  /**
    Check if the collision is always forced.
  **/
  function forceAlways(): Bool;

  /**
    Check if the collision is never forced
  **/
  function forceNever(): Bool;

  static var prototype: Mountain;
}
