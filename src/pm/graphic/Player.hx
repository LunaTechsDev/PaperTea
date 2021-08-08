package pm.graphic;

@:jsRequire("./Content/Datas/Scripts/System/Graphic/index", "Player") extern class Player extends Base {
  function new(player: Dynamic, ?__1: {@:optional var isMainMenu: Bool; @:optional var reverse: Bool;});
  var player: Dynamic;
  var reverse: Bool;
  var graphicName: Dynamic;
  var graphicClass: Dynamic;
  var graphicLevelName: Dynamic;
  var graphicLevel: Dynamic;
  var graphicExpName: Dynamic;
  var graphicExp: Dynamic;
  var listStatsNames: Array<Dynamic>;
  var listStats: Array<Dynamic>;
  var maxStatNamesLength: Float;
  var maxStatLength: Float;
  var faceset: content.datas.scripts.system.core.index.Picture2D;
  var battler: content.datas.scripts.system.core.index.Picture2D;
  var battlerFrame: content.datas.scripts.system.core.frame.Frame;
  var graphicLevelUp: Dynamic;
  var displayNameLevel: Bool;
  var graphicStatShort: Dynamic;
  var isMainMenu: Bool;

  /**
    Update the reverse value for faceset.
  **/
  function updateReverse(reverse: Bool): Void;

  /**
    Update experience graphics.
  **/
  function updateExperience(): Void;

  /**
    Initialize character graphics font size.
  **/
  function initializeCharacter(?noDisplayNameLevel: Bool): Void;

  /**
    Update battler frame.
  **/
  function updateBattler(): Void;

  /**
    Update stat short.
  **/
  function updateStatShort(weaponArmor: Dynamic): Void;

  /**
    Update stat short to none.
  **/
  function updateStatShortNone(): Void;

  /**
    Drawing the character.
  **/
  function drawCharacter(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the player in choice box in the main menu.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the player informations in battles.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: Player;
}
