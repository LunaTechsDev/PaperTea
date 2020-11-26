package pm.core;

import pm.core.Enums.IncreaseDecreaseKind;
import pm.core.Enums.AnimationPositionKind;
import pm.core.Enums.DamagesKind;
import pm.system.DynamicValue;
import haxe.extern.EitherType;
import haxe.DynamicAccess;
import pm.core.Enums.ElementMapKind;
import pm.core.Enums.SpriteWallKind;

typedef NumOrDynamic = EitherType<Float, DynamicValue>;

typedef MapElementJSON = {
  /**
   * X Offset
   */
  public var xOff: Float;

  /**
   * Y Offset
   */
  public var yOff: Float;

  /**
   * Z Offset
   */
  public var zOff: Float;
}

typedef SpriteWallJSON = {
  > MapElementJSON,

  /**
   * Identifier/ID
   */
  public var w: Int;

  /**
   * Kind
   */
  public var k: SpriteWallKind;
}

typedef SpriteJSON = {
  > MapElementJSON,

  /**
   * Front
   */
  public var f: Bool;

  /**
   * Sprite Kind
   */
  public var k: ElementMapKind;

  /**
   * Texture Rectangle
   */
  public var t: Array<Float>;
}

typedef LandJSON = {
  > MapElementJSON,

  /**
   * Up Or Not
   */
  public var up: Bool;

  /**
   * Texture Rectangle
   */
  public var t: Array<Float>;
}

typedef FloorJSON = {
  > LandJSON,
}

typedef AutotileJSON = {
  > LandJSON,

  /**
   * AutoTile ID
   */
  public var id: Int;

  /**
   * Tile ID
   */
  public var tid: Int;
}

typedef CollisionSquareJSON = {
  /**
   * Rectangle
   */
  public var rec: Array<Float>;

  /**
   * Left
   */
  public var l: Bool;

  /**
   * Right
   */
  public var r: Bool;

  /**
   * Top
   */
  public var top: Bool;

  /**
   * Bottom
   */
  public var bot: Bool;
}

typedef ProgressionJSON = {
  /**
   * Initial Value
   */
  public var i: Float;

  /**
   * Final Value
   */
  public var f: Float;

  /**
   * Equation/Equation Kind
   */
  public var e: Int; // Equation Kind

  /**
   * Table
   */
  public var t: DynamicAccess<Dynamic>; // <String, Any>

}

typedef CostJSON = {
  /**
   * Damage Kind
   */
  public var k: DamagesKind;

  /**
   * Statistics ID
   */
  public var sid: Int;

  /**
   * CurrencyID
   */
  public var cid: Int;

  /**
   * Variable ID
   */
  public var vid: Int;

  /**
   * Value Formula
   */
  public var vf: String;
}

typedef ColorJSON = {
  /**
   * Red
   */
  public var r: Float;

  /**
   * Green
   */
  public var g: Float;

  /**
   * Blue
   */
  public var b: Float;

  /**
   * Alpha
   */
  public var a: Float;
}

typedef LangJSON = {
  public var names: Array<String>;
}

typedef IconJSON = {
  > LangJSON,

  /**
   * Picture ID
   */
  public var pid: Int;
}

typedef AnimationJSON = {
  /**
   * Picture ID
   */
  public var pid: Int;

  /**
   * Position Kind
   */
  public var pk: AnimationPositionKind;

  /**
   * Frames
   */
  public var f: Int;

  /**
   * Rows
   */
  public var r: Int;

  /**
   * Columns
   */
  public var c: Int;
}

typedef AnimationFrameJSON = {
  /**
   * Animation Elements JSON
   */
  public var e: Dynamic;

  /**
   * Animation Effects JSON
   */
  public var ef: Dynamic;
}

typedef AnimationFEJSON = {
  /**
   * X Position
   */
  public var x: Float;

  /**
   * Y Position
   */
  public var y: Float;

  /**
   * Texture Row
   */
  public var tr: Int;

  /**
   * Texture Column
   */
  public var tc: Int;

  /**
   * Zoom
   */
  public var z: Float;

  /**
   * Angle
   */
  public var a: Float;

  /**
   * Flip Value
   */
  public var fv: Bool;

  /**
   * Opacity
   */
  public var o: Float;
}

typedef StaticProgressionJSON = {
  /**
   * Id
   */
  public var id: Int;

  /**
   * Maximum Value
   */
  public var m: Float;

  /**
   * Is Fixed
   */
  @:native('if')
  public var isFix: Bool;

  /**
   * Progression Table JSON
   */
  public var t: Dynamic;

  /**
   * Random
   */
  public var r: Float;

  /**
   * Formula
   */
  public var f: Float;
}

typedef ClassJSON = {
  > LangJSON,

  /**
   * Initial Level
   */
  public var iniL: Int;

  /**
   * Final Level / Max Level
   */
  public var mxL: Int;

  /**
   * Experience Base
   */
  public var eB: Int;

  /**
   * Experience Inflation
   */
  public var eI: Int;

  /**
   * Experience Table
   */
  public var eT: Dynamic;
}

typedef ClassSkillJSON = {
  /**
   * Skill ID
   */
  public var id: Int;

  /**
   * Level
   */
  public var l: Int;
}

// TODO: Fill out with relevant tags if any
typedef ArmorJSON = {}

typedef CharacteristicJSON = {
  /**
   * Increase or Decrease
   */
  public var iid: Bool;

  /**
   * Increase or decrease kind integer
   */
  public var idk: IncreaseDecreaseKind;

  /**
   * Statistic Value ID
   */
  public var svid: Int;

  /**
   * Element Resistance ID
   */
  public var erid: Int;

  /**
   * Status Resistance ID
   */
  public var strid: Int;

  /**
   * Currency Gain ID
   */
  public var cgid: Int;

  /**
   * Skill Cost ID
   */
  public var scid: Int;

  /**
   * Is All Skill Cost
   */
  public var iasc: Bool;

  /**
   * Variable ID
   */
  public var vid: Int;

  /**
   * Operation
   */
  public var o: Bool;

  /**
   * Value
   */
  public var v: Float;

  /**
   * Unit
   */
  public var unit: Bool;

  /**
   * Script
   */
  public var s: String;

  /**
   * Is Allow Equip
   */
  public var iae: Bool;

  /**
   * Is allow equip weapon
   */
  public var iaw: Bool;

  /**
   * Equip weapon type ID
   */
  public var ewtid: Int;

  /**
   * Equip armor type ID
   */
  public var eatid: Int;

  /**
   * Is allow change equipment
   */
  public var iace: Bool;

  /**
   * Change Equipment ID
   */
  public var ceid: Int;

  /**
   * Begin equipment ID
   */
  public var beid: Int;

  /**
   * Is begin weapon
   */
  public var ibw: Bool;

  /**
   * Begin Weapon armor ID
   */
  public var bwaid: Int;
}

typedef PlaySongJSON = {
  public var isbi: Bool;

  /**
   * Variable ID
   */
  public var vid: Int;

  /**
   * ID
   */
  public var id: Int;

  /**
   * Is Start
   */
  public var is: Bool;

  /**
   * Start
   */
  public var s: Float;

  /**
   * Is End
   */
  public var ie: Bool;

  /**
   * End
   */
  public var e: Float;
}

typedef BattleMapJSON = {
  /**
   * Map ID
   */
  public var idm: Int;

  /**
   * Position
   */
  public var p: Array<Float>;
}
