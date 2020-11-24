package pm.system;

import pm.game.GamePlayer;
import pm.core.Types.StaticProgressionJSON;

/**
 * Statistic Progression within the game.
 */
extern class StatisticProgression extends BaseSystem {
  public var id: Int;
  public var maxValue: DynamicValue;
  public var isFix: Bool;
  public var table: ProgressionTable;
  public var random: DynamicValue;
  public var formula: DynamicValue;

  public function new(json: StaticProgressionJSON): Void;

  public function setup(): Void;

  /**
   * Read the JSON associated to the statistic progression
   * @param {Object} json Json object describing the statistic progression
   */
  public function read(json: StaticProgressionJSON): Void;

  /** Get the value progresion at level
   * @param {number} level The level
   * @param {GamePlayer} user The user
   * @param {number} [maxLevel=undefined] The max level
   */
  public function getValueAtLevel(level: Int, user: GamePlayer, maxLevel: Int): Float;
}
