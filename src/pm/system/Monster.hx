package pm.system;

extern class Monster extends Hero {
  function new(?json: {});
  var rewards: StructReward;
  var actions: Array<MonsterAction>;

  /**
    Get the experience reward.
  **/
  function getRewardExperience(level: Float): Float;

  /**
    Get the currencies reward.
  **/
  function getRewardCurrencies(level: Float): {};

  /**
    Get the loots reward.
  **/
  function getRewardLoots(level: Float): Array<{}>;

  static var prototype: Monster;
}
