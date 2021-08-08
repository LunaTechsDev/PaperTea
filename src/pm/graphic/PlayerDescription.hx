package pm.graphic;

@:jsRequire("./Content/Datas/Scripts/System/Graphic/index",
  "PlayerDescription") extern class PlayerDescription extends Base {
  function new(player: content.datas.scripts.system.core.index.Player);
  var player: content.datas.scripts.system.core.index.Player;
  var graphicNameCenter: Dynamic;
  var graphicName: Dynamic;
  var graphicClass: Dynamic;
  var graphicLevelName: Dynamic;
  var graphicLevel: Dynamic;
  var graphicExpName: Dynamic;
  var graphicExp: Dynamic;
  var listStatsNames: Array<Dynamic>;
  var listStats: Array<Dynamic>;
  var listLength: Array<Float>;
  var battler: content.datas.scripts.system.core.index.Picture2D;
  var battlerFrame: content.datas.scripts.system.core.frame.Frame;
  var listStatsProgression: Array<Dynamic>;
  var maxLength: Float;

  /**
    Initialize the statistic progression
  **/
  function initializeStatisticProgression(): Void;

  /**
    Update the statistic progression.
  **/
  function updateStatisticProgression(): Void;

  /**
    Update the battler frame.
  **/
  function updateBattler(): Void;

  /**
    Drawing the statistic progression.
  **/
  function drawStatisticProgression(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the player in choice box
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the player description
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: PlayerDescription;
}
