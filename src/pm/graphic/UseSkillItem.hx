package pm.graphic;

@:jsRequire("./Content/Datas/Scripts/System/Graphic/index", "UseSkillItem") extern class UseSkillItem extends Base {
  function new(?__0: {@:optional var hideArrow: Bool;});
  var skillItem: Dynamic;
  var graphicCharacters: Array<Dynamic>;
  var all: Bool;
  var indexArrow: Float;
  var hideArrow: Bool;

  /**
    Get the selected player.
  **/
  function getSelectedPlayer(): content.datas.scripts.system.core.index.Player;

  /**
    Set skill item.
  **/
  function setSkillItem(skillItem: Dynamic): Void;

  /**
    Set if all targets are selected or not.
  **/
  function setAll(b: Bool): Void;

  /**
    Udpate the battler.
  **/
  function updateStats(): Void;

  /**
    Move arrow left.
  **/
  function goLeft(): Void;

  /**
    Move arrow right.
  **/
  function goRight(): Void;

  /**
    Move an arrow according to index.
  **/
  function moveArrow(index: Float): Void;

  /**
    Update stat short.
  **/
  function updateStatShort(weaponArmor: Dynamic): Void;

  /**
    Update stat short to none.
  **/
  function updateStatShortNone(): Void;

  /**
    Key pressed repeat handle, but with a small wait after the first
    pressure.
  **/
  function onKeyPressedAndRepeat(key: Float): Void;

  /**
    Draw an arrow at a specific index.
  **/
  function drawArrowAtIndex(index: Float, x: Float, y: Float, h: Float): Void;

  /**
    Drawing the skill or item use informations.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the skill or item use informations.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: UseSkillItem;
}
