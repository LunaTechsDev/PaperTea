package pm.system;

import pm.core.Types.NumOrDynamic;
import pm.core.Types.ProgressionJSON;
import haxe.DynamicAccess;

/** @class
 *   A progression table
 *   @property {number} id The ID
 *   @property {SystemValue} initialValue The initial value
 *   @property {SystemValue} finalValue The final value
 *   @property {number} equation The equation kind
 *   @property {Object} table The table progression
 *   @param {number} [id=undefined] The ID
 *   @param {Object} [json=undefined] Json object describing the progression
 *   table
 */
@:native('ProgressionTable')
@:js.import('../../System/System/ProgressionTable.js')
extern class ProgressionTable extends BaseSystem {
  public var id: Int;
  public var initialValue: DynamicValue;
  public var finalValue: DynamicValue;
  public var equation: Int; // EquationKind
  public var table: DynamicAccess<Dynamic>; // <String, Any>
  public var start: Float;
  public var change: Float;
  public var duration: Float;

  public function new(?id: Int, ?json: ProgressionJSON): Void;

  /** Create a new system progression table
   *   @param {DynamicValue | Float} i The initial value
   *   @param {DynamicValue | Float} f The final value
   *   @param {Int} equation The equation kind
   *   @returns {ProgressionTable}
   */
  public static function create(initialValue: NumOrDynamic, finalValue: NumOrDynamic, equation: Int): ProgressionTable;

  public function setup(id: Int): Void;

  /** Initialize this progression table
   *   @param {DynamicValue | Float} i The initial value
   *   @param {DynamicValue | Float} f The final value
   *   @param {DynamicValue | Float} equation The equation kind
   */
  public function initialize(initialValue: NumOrDynamic, finalValue: NumOrDynamic, equatioinKind: Int): Void;

  public function getProgressionAt(currentValue: Float, finalValue: Float, decimal: Bool): Float;

  public function read(json: ProgressionJSON): Void;

  /** The easing linear function
   *   @param {Float} x
   *   @returns {Float}
   */
  public function easingLinear(x: Float): Float;

  /** The easing quadratic in function
   *   @param {Float} x
   *   @returns {Float}
   */
  public function easingQuadraticIn(x: Float): Float;

  /** The easing quadratic out function
   *   @param {Float} x
   *   @returns {Float}
   */
  public function easingQuadraticOut(x: Float): Float;

  /** The easing cubic in function
   *   @param {Float} x
   *   @returns {Float}
   */
  public function easingCubicIn(x: Float): Float;

  /** The easing cubic out function
   *   @param {Float} x
   *   @returns {Float}
   */
  public function easingCubicOut(x: Float): Float;

  /** The easing quartic in function
   *   @param {Float} x
   *   @returns {Float}
   */
  public function easingQuarticIn(x: Float): Float;

  /** The easing quartic in function
   *   @param {Float} x
   *   @returns {Float}
   */
  public function easingQuarticOut(x: Float): Float;

  /** The easing quintic in function
   *   @param {Float} x
   *   @returns {Float}
   */
  public function easingQuinticIn(x: Float): Float;

  /** The easing quintic out function
   *   @param {Float} x
   *   @returns {Float}
   */
  public function easingQuinticOut(x: Float): Float;
}
