package pm.system;

/** @class
 *  A special element (autotile, wall, object3D, mountain) of the game.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  special element
 */
@:native('SpecialElement')
@:js.import('../../System/System/SpecialElement.js')
extern class SpecialElement extends Base {
  function new(?json: {});
  var pictureID: Float;
  static var prototype: SpecialElement;
}
