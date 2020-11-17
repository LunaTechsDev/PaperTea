package pm.system;

/**
 *   Enum for the different command moves kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract CommandMoveKind(Int) from Int to Int {
  public var MoveNorth = 0;
  public var MoveSouth = 1;
  public var MoveWest = 2;
  public var MoveEast = 3;
  public var MoveNorthWest = 4;
  public var MoveNorthEast = 5;
  public var MoveSouthWest = 6;
  public var MoveSouthEast = 7;
  public var MoveRandom = 8;
  public var MoveHero = 9;
  public var MoveOppositeHero = 10;
  public var MoveFront = 11;
  public var MoveBack = 12;
  public var ChangeGraphics = 13;
}

/**
 *   Enum for the different event commands kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract EventCommandKind(Int) from Int to Int {
  public var None = 0;
  public var ShowText = 1;
  public var ChangeVariables = 2;
  public var EndGame = 3;
  public var While = 4;
  public var EndWhile = 5;
  public var WhileBreak = 6;
  public var InputNumber = 7;
  public var If = 8;
  public var Else = 9;
  public var EndIf = 10;
  public var OpenMainMenu = 11;
  public var OpenSavesMenu = 12;
  public var ModifyInventory = 13;
  public var ModifyTeam = 14;
  public var StartBattle = 15;
  public var IfWin = 16;
  public var IfLose = 17;
  public var ChangeState = 18;
  public var SendEvent = 19;
  public var TeleportObject = 20;
  public var MoveObject = 21;
  public var Wait = 22;
  public var MoveCamera = 23;
  public var PlayMusic = 24;
  public var StopMusic = 25;
  public var PlayBackgroundSound = 26;
  public var StopBackgroundSound = 27;
  public var PlaySound = 28;
  public var PlayMusicEffect = 29;
  public var ChangeProperty = 30;
  public var DisplayChoice = 31;
  public var Choice = 32;
  public var EndChoice = 33;
  public var Script = 34;
  public var DisplayAPicture = 35;
  public var SetMoveTurnAPicture = 36;
  public var RemoveAPicture = 37;
  public var SetDialogBoxOptions = 38;
  public var TitleScreen = 39;
  public var ChangeScreenTone = 40;
  public var RemoveObjectFromMap = 41;
  public var StopReaction = 42;
  public var AllowForbidSaves = 43;
  public var AllowForbidMainMenu = 44;
  public var CallACommonReaction = 45;
  public var Label = 46;
  public var JumpLabel = 47;
  public var Comment = 48;
  public var ChangeAStatistic = 49;
  public var ChangeASkill = 50;
  public var ChangeName = 51;
  public var ChangeEquipment = 52;
  public var ModifyCurrency = 53;
  public var DisplayAnAnimation = 54;
  public var ShakeScreen = 55;
  public var FlashScreen = 56;
}

/**
 *   Enum for the different items kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract ItemKind(Int) from Int to Int {
  public var Item = 0;
  public var Weapon = 1;
  public var Armor = 2;
}

/**
 *   Enum for the different players kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract CharacterKind(Int) from Int to Int {
  public var Hero = 0;
  public var Monster = 1;
}

/**
 *   Enum for the different groups kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract GroupKind(Int) from Int to Int {
  public var Team = 0;
  public var Reserve = 1;
  public var Hidden = 2;
}

/**
 *   Enum for the different horizontal aligns kind.
 *   @enum {string}
 *   @readonly
 */
enum abstract Align(String) from String to String {
  public var Left = 'left';
  public var Right = 'right';
  public var Center = 'center';
}

/**
 *   Enum for the different vertical aligns kind.
 *   @enum {string}
 *   @readonly
 */
enum abstract AlignVertical(Int) from Int to Int {
  public var Bot = 0;
  public var Top = 1;
  public var Center = 2;
}

/**
 *   Enum for the different orientations kind.
 *   @enum {string}
 *   @readonly
 */
enum abstract Orientation(Int) from Int to Int {
  public var South = 0;
  public var West = 1;
  public var North = 2;
  public var East = 3;
  public var None = 4;
}

/**
 *   Enum for the different map elements kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract ElementMapKind(Int) from Int to Int {
  public var None = 0;
  public var Floors = 1;
  public var Autotiles = 2;
  public var Water = 3;
  public var SpritesFace = 4;
  public var SpritesFix = 5;
  public var SpritesDouble = 6;
  public var SpritesQuadra = 7;
  public var SpritesWall = 8;
  public var Object = 9;
  public var Object3D = 10;
  public var Mountains = 11;
}
