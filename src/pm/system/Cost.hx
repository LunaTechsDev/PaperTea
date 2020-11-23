package pm.system;

import pm.core.Enums.DamagesKind;
import pm.core.Types.CostJSON;
import js.node.Constants;

/** @class
 *   A cost of a common skill item
 *   @property {DamagesKind} kind The kind of damage to apply cost
 *   @property {Int} statisticID The statistic ID to apply cost
 *   @property {Int} currencyID The currency ID to apply cost
 *   @property {Int} variableID The variable ID to apply cost
 *   @property {String} valueFormula The formula to apply
 *   @param {CostJSON} [json=undefined] Json object describing the cost
 */
@:native('Cost')
extern class Cost {
  public var kind: DamagesKind;
  public var statisticID: Int;
  public var currencyID: Int;
  public var variableID: Int;
  public var valueFormula: String;

  public function new(?json: CostJSON): Void;

  /** Read the JSON associated to the cost
   *   @param {CostJSON} json Json object describing the cost
   */
  public function read(json: CostJSON): Void;

  /** 
   * Use the cost
   */
  public function use(): Void;

  /** 
   * Check if the cost is possible
   *   @returns {Bool}
   */
  public function isPossible(): Bool;

  /** 
   * Get the string representing the cost
   *   @returns {string}
   */
  public function toString(): String;
}
