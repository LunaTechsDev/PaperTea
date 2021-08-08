package pm.graphic;

@:jsRequire("./Content/Datas/Scripts/System/Graphic/index",
  "StatisticProgression") extern class StatisticProgression extends Base {
  function new(player: content.datas.scripts.system.core.index.Player);
  var player: content.datas.scripts.system.core.index.Player;
  var listStatsProgression: Array<Dynamic>;
  var listStatsNames: Array<Dynamic>;
  var listStats: Array<Dynamic>;
  var maxLength: Float;
  var maxProgressionLength: Float;

  /**
    Update the statistic progression graphics.
  **/
  function updateStatisticProgression(): Void;

  /**
    Get the stat names list height.
  **/
  function getHeight(): Float;

  /**
    Drawing the player description.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the player description.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: StatisticProgression;
}
