package pm.core;

@:native('Game')
@:js.import('../../System/Core/Game.js')
extern class Game {
  function new(?slot: Float);
  var slot: Float;
  var hero: pm.system.MapObject;
  var heroBattle: pm.system.MapObject;
  var playTime: Chrono;
  var charactersInstances: Float;
  var variables: Array<Dynamic>;
  var items: Array<Item>;
  var currencies: Array<Float>;
  var currenciesEarned: Array<Float>;
  var currenciesUsed: Array<Float>;
  var teamHeroes: Array<Player>;
  var reserveHeroes: Array<Player>;
  var hiddenHeroes: Array<Player>;
  var currentMapID: Float;
  var heroStates: Array<Float>;
  var heroProperties: Array<Float>;
  var heroStatesOptions: Array<{}>;
  var startupStates: {};
  var startupProperties: {};
  var mapsDatas: {};
  var mapsProperties: {};
  var isEmpty: Bool;
  var shops: {};
  var battleMusic: Dynamic;
  var victoryMusic: Dynamic;
  var steps: Float;
  var saves: Float;
  var battles: Float;
  var chronometers: Array<Chrono>;

  /**
    Load the game file.
  **/
  function load(): js.lib.Promise<Void>;

  /**
    Save a game file.
  **/
  function save(?slot: Float): js.lib.Promise<Void>;

  /**
    Load the positions that were kept (keep position option).
  **/
  function loadPositions(): js.lib.Promise<Void>;

  /**
    Get a compressed version of mapsDatas (don't retain meshs).
  **/
  function getCompressedMapsDatas(): Dynamic;

  /**
    Initialize a default game
  **/
  function initializeDefault(): Void;

  /**
    Initialize the default variables.
  **/
  function initializeVariables(): Void;

  /**
    Instanciate a new character in a group in the game.
  **/
  function instanciateTeam(groupKind: pm.core.Enums.GroupKind, type: pm.core.Enums.CharacterKind, id: Float,
    level: Float, stockID: Float): Player;

  /**
    Get the teams list in a list.
  **/
  function getGroups(): Array<Array<Player>>;

  /**
    Get the path save according to slot.
  **/
  function getPathSave(?slot: Float): String;

  /**
    Get the variable by ID.
  **/
  function getVariable(id: Float): Dynamic;

  /**
    Get the currency by ID.
  **/
  function getCurrency(id: Float): Dynamic;

  /**
    Get the currency earned by ID.
  **/
  function getCurrencyEarned(id: Float): Dynamic;

  /**
    Get the currency used by ID.
  **/
  function getCurrencyUsed(id: Float): Dynamic;

  /**
    Get the hero with instance ID.
  **/
  function getHeroByInstanceID(id: Float): Player;

  /**
    Use an item and remove it from inventory.
  **/
  function useItem(item: Item): Void;

  /**
    Get the team according to group kind.
  **/
  function getTeam(kind: pm.core.Enums.GroupKind): Array<Player>;

  /**
    Get the portions datas according to id and position.
  **/
  function getPortionDatas(id: Float, portion: Portion): {};

  /**
    Get the portions datas according to id and position.
  **/
  function getPortionPosDatas(id: Float, i: Float, j: Float, k: Float): {};

  /**
    Get a chrono ID.
  **/
  function getNewChronoID(): Float;

  /**
    Update.
  **/
  function update(): Void;

  /**
    Draw the HUD.
  **/
  function drawHUD(): Void;

  static var prototype: Game;
  static var current: Game;

  /**
    Get the hero in a tab with instance ID.
  **/
  static function getHeroInstanceInTab(tab: Array<Player>, id: Float): Player;
}
