package pm.system;

/** @class
 *  Abn autotile of the game.
 *  @extends System.SpecialElement
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  autotile
 */
@:native('Autotile')
@:js.import('../../System/System/Autotile.js')
extern class Autotile extends SpecialElement {
  function new(?json: {});
  var isAnimated: Bool;
  static var prototype: Autotile;
}
