package pm.system;

import pm.core.Types.BattleMapJSON;

/**
 * A battle map of the game.
 */
extern class BattleMap extends BaseSystem {
  public var idMap: Int;
  public var position: Array<Float>;
  public function new(?json: BattleMapJSON): Void;

  /** Create a system battle map
   *   @static
   * @param idMap  idMap The map ID
   * @param position position The json position
   */
  public static function create(idMap: Int, position: Array<Float>): Void;

  /** Read the JSON associated to the battle map
   * @param {Object} json Json object describing the battle map
   */
  public function read(json: BattleMapJSON): Void;

  public function setup(): Void;
}
