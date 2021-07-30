package pm.system;

/** @class
 *  A currency of the game.
 *  @extends {System.Icon}
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  currency
 */
extern class Currency extends Icon {
  function new(?json: {});
  static var prototype: Currency;
}
