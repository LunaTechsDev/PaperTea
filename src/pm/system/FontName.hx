package pm.system;

/** @class
 *  A font name of the game.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  font name
 */
@:native('FontName')
extern class FontName extends Base {
  function new(?json: {});
  var name: String;
  var isBasic: Bool;
  var font: Dynamic;
  var customFontID: Float;

  /**
    Get the font name (default or custom).
  **/
  function getName(): String;

  static var prototype: FontName;
}
