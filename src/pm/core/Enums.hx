package pm.core;

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

/**
 *   Enum for the different sprite walls kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract SpriteWallKind(Int) from Int to Int {
  public var Left = 0;
  public var Middle = 1;
  public var Right = 2;
  public var LeftRight = 3;
}

/**
 *   Enum for the different pictures kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract PictureKind(Int) from Int to Int {
  public var None = 0;
  public var Bars = 1;
  public var Icons = 2;
  public var Autotiles = 3;
  public var Characters = 4;
  public var Mountains = 5;
  public var Tilesets = 6;
  public var Walls = 7;
  public var Battlers = 8;
  public var Facesets = 9;
  public var WindowSkins = 10;
  public var TitleScreen = 11;
  public var Objects3D = 12;
  public var Pictures = 13;
  public var Animations = 14;
  public var Skyboxes = 15;
}

/**
 *   Enum for the different songs kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract SongKind(Int) from Int to Int {
  public var None = 0;
  public var Music = 1;
  public var BackgroundSound = 2;
  public var Sound = 3;
  public var MusicEffect = 4;
}

/** Enum for the different primitive values kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract PrimitiveValueKind(Int) from Int to Int {
  public var None = 0;
  public var Anything = 1;
  public var Default = 2;
  public var Number = 3;
  public var Variable = 4;
  public var Parameter = 5;
  public var Property = 6;
  public var DataBase = 7;
  public var Message = 8;
  public var Script = 9;
  public var Switch = 10;
  public var KeyBoard = 11;
  public var NumberDouble = 12;
}

/**
 *   Enum for the different window orientations.
 *   @enum {number}
 *   @readonly
 */
enum abstract OrientationWindow(Int) from Int to Int {
  public var Vertical = 0;
  public var Horizontal = 1;
}

/**
 *   Enum for the different battler steps.
 *   @enum {number}
 *   @readonly
 */
enum abstract BattlerStep(Int) from Int to Int {
  public var Normal = 0;
  public var Attack = 1;
  public var Skill = 2;
  public var Item = 3;
  public var Escape = 4;
  public var Defense = 5;
  public var Attacked = 6;
  public var Victory = 7;
  public var Dead = 8;
}

/**
 *   Enum for the different loots kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract LootKind(Int) from Int to Int {
  public var Item = 0;
  public var Weapon = 1;
  public var Armor = 2;
}

/**
 *   Enum for the different damages kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract DamagesKind(Int) from Int to Int {
  public var Stat = 0;
  public var Currency = 1;
  public var Variable = 2;
}

/**
 *   Enum for the different effect kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract EffectKind(Int) from Int to Int {
  public var Damages = 0;
  public var Status = 1;
  public var AddRemoveSkill = 2;
  public var PerformSkill = 3;
  public var CommonReaction = 4;
  public var SpecialActions = 5;
  public var Script = 6;
}

/**
 *   Enum for the different effect special action kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract EffectSpecialActionKind(Int) from Int to Int {
  public var None = -1;
  public var ApplyWeapons = 0;
  public var OpenSkills = 1;
  public var OpenItems = 2;
  public var Escape = 3;
  public var EndTurn = 4;
  public var DoNothing = 5;
}

/**
 *   Enum for the different characteristic kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract CharacteristicKind(Int) from Int to Int {
  public var IncreaseDecrease = 0;
  public var Script = 1;
  public var AllowForbidEquip = 2;
  public var AllowForbidChange = 3;
  public var BeginEquipment = 4;
}

/**
 *   Enum for the different increase / decrease kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract IncreaseDecreaseKind(Int) from Int to Int {
  public var StatValue = 0;
  public var ElementRes = 1;
  public var StatusRes = 2;
  public var ExperienceGain = 3;
  public var CurrencyGain = 4;
  public var SkillCost = 5;
  public var Variable = 6;
}

/**
 *   Enum for the different target kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract TargetKind(Int) from Int to Int {
  public var None = 0;
  public var User = 1;
  public var Enemy = 2;
  public var Ally = 3;
  public var AllEnemies = 4;
  public var AllAllies = 5;
}

/**
 *   Enum for the different available kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract AvailableKind(Int) from Int to Int {
  public var Battle = 0;
  public var MainMenu = 1;
  public var Always = 2;
  public var Never = 3;
}

/**
 *   Enum for the different shape kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract ShapeKind(Int) from Int to Int {
  public var Box = 0;
  public var Sphere = 1;
  public var Cylinder = 2;
  public var Cone = 3;
  public var Capsule = 4;
  public var Custom = 5;
}

/**
 *   Enum for the different custom shape kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract CustomShapeKind(Int) from Int to Int {
  public var None = 0;
  public var OBJ = 1;
  public var MTL = 2;
  public var Collisions = 3;
}

/**
 *   Enum for the different object collision kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract ObjectCollisionKind(Int) from Int to Int {
  public var None = 0;
  public var Perfect = 1;
  public var Simplified = 2;
  public var Custom = 3;
}

/**
 *   Enum for the map transitions.
 *   @enum {number}
 *   @readonly
 */
enum abstract MapTransitionKind(Int) from Int to Int {
  public var None = 0;
  public var Fade = 1;
  public var Zoom = 2;
}

/**
 *   Enum for the map transitions.
 *   @enum {number}
 *   @readonly
 */
enum abstract MountainCollisionKind(Int) from Int to Int {
  public var Default = 0;
  public var Always = 1;
  public var Never = 2;
}

/**
 *   Enum for the title commands.
 *   @enum {number}
 *   @readonly
 */
enum abstract TitleCommandKind(Int) from Int to Int {
  public var NewGame = 0;
  public var LoadGame = 1;
  public var Settings = 2;
  public var Exit = 3;
  public var Script = 4;
}

/**
 *   Enum for the title settings.
 *   @enum {number}
 *   @readonly
 */
enum abstract TitleSettingKind(Int) from Int to Int {
  public var KeyboardAssigment = 0;
}

/** *   Enum for the object moving.
 *   @enum {number}
 *   @readonly
 */
enum abstract ObjectMovingKind(Int) from Int to Int {
  public var Fix = 0;
  public var Random = 1;
  public var Route = 2;
}

/**
 *   Enum for the tags.
 *   @enum {number}
 *   @readonly
 */
enum abstract TagKind(Int) from Int to Int {
  public var NewLine = 0;
  public var Text = 1;
  public var Bold = 2;
  public var Italic = 3;
  public var Left = 4;
  public var Center = 5;
  public var Right = 6;
  public var Size = 7;
  public var Font = 8;
  public var TextColor = 9;
  public var BackColor = 10;
  public var StrokeColor = 11;
  public var Variable = 12;
  public var Parameter = 13;
  public var Property = 14;
  public var HeroName = 15;
  public var Icon = 16;
}

/**
 *   Enum for the condition heroes.
 *   @enum {number}
 *   @readonly
 */
enum abstract ConditionHeroesKind(Int) from Int to Int {
  public var AllTheHeroes = 0;
  public var NoneOfTheHeroes = 1;
  public var AtLeastOneHero = 2;
  public var TheHeroeWithInstanceID = 3;
}

/**
 *   Enum for the variables map object characteristics.
 *   @enum {number}
 *   @readonly
 */
enum abstract VariableMapObjectCharacteristicKind(Int) from Int to Int {
  public var XSquarePosition = 0;
  public var YSquarePosition = 1;
  public var ZSquarePosition = 2;
  public var XPixelPosition = 3;
  public var YPixelPosition = 4;
  public var ZPixelPosition = 5;
  public var Orientation = 6;
}

/**
 *   Enum for the animation position kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract AnimationPositionKind(Int) from Int to Int {
  public var Top = 0;
  public var Middle = 1;
  public var Bottom = 2;
  public var ScreenCenter = 3;
}

/**
 *   Enum for the animation effect condition kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract AnimationEffectConditionKind(Int) from Int to Int {
  public var None = 0;
  public var Hit = 1;
  public var Miss = 2;
  public var Critical = 3;
}

/**
 *   Enum for the monster action kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract MonsterActionKind(Int) from Int to Int {
  public var UseSkill = 0;
  public var UseItem = 1;
  public var DoNothing = 2;
}

/**
 *   Enum for the monster action target kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract MonsterActionTargetKind(Int) from Int to Int {
  public var Random = 0;
  public var WeakEnemies = 1;
}

/**
 *   Enum for the operation kind.
 *   @enum {number}
 *   @readonly
 */
enum abstract OperationKind(Int) from Int to Int {
  public var EqualTo = 0;
  public var NotEqualTo = 1;
  public var GreaterThanOrEqualTo = 2;
  public var LesserThanOrEqualTo = 3;
  public var GreaterThan = 4;
  public var LesserThan = 5;
}

// TODO: Convert enums to extern enums later for ease of use

/**
  Enum for the troop reaction frequency kind.
**/
extern enum abstract TroopReactionFrequencyKind(Int) from Int to Int {
  var OneTime;
  var EachTurnBegin;
  var EachTurnEnd;
  var Always;
}

/**
  Enum for the main menu command kind.
**/
extern enum abstract MainMenuCommandKind(Int) from Int to Int {
  var Inventory;
  var Skills;
  var Equip;
  var States;
  var Order;
  var Save;
  var Quit;
  var Script;
}

/**
  Enum for the status restrictions kind.
**/
extern enum abstract StatusRestrictionsKind(Int) from Int to Int {
  var None;
  var CantDoAnything;
  var CantUseSkills;
  var CantUseItems;
  var CantEscape;
  var AttackRandomTarget;
  var AttackRandomAlly;
  var AttackRandomEnemy;
}
