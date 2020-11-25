package pm.core;

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
