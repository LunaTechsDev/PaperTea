package pm.core;

import pm.core.Enums.AnimationEffectConditionKind;
import pm.core.Enums.IncreaseDecreaseKind;
import pm.core.Enums.AnimationPositionKind;
import pm.core.Enums.DamagesKind;
import pm.system.DynamicValue;
import haxe.extern.EitherType;
import haxe.DynamicAccess;
import pm.core.Enums.ElementMapKind;
import pm.core.Enums.SpriteWallKind;
import pm.core.Enums.OrientationWindow;

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
  public var is : Bool;

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

typedef AnimationFrameEffectJSON = {
  /**
   * Is Sound Effect
   */
  public var ise: Bool;

  /**
   * Animation Effect Condition Kind
   */
  public var c: AnimationEffectConditionKind;
}

typedef CameraPropertiesJSON = {
  /**
   * Distance
   */
  public var d: Float;

  /**
   * Horizontal Angle
   */
  public var ha: Float;

  /**
   * Vertical Angle
   */
  public var va: Float;

  /**
   * Target Offset X
   */
  public var tox: Float;

  /**
   * Target Offset Y
   */
  public var toy: Float;

  public var toz: Float;

  /**
   * Is Square Target Offset X
   */
  public var istox: Bool;

  /**
   * Is Square Target Offset Y
   */
  public var istoy: Bool;

  /**
   * Is Square Target Offset Z
   */
  public var istoz: Bool;

  /**
   * Field of view
   */
  public var fov: Float;

  /**
   * Near the near
   */
  public var n: Float;

  /**
   * Far the far
   */
  public var f: Float;
}

/**
  the choices options used for the window initialization
**/
typedef ChoicesOptions = {
  /**
    The choices callbacks
  **/
  @:optional
  var listCallbacks: Array<haxe.Constraints.Function>;

  /**
    The choices list orientation
  **/
  @:optional
  var orientation: OrientationWindow;

  /**
    The max number of choices displayed
  **/
  @:optional
  var nbItemsMax: Float;

  /**
    The window padding
  **/
  @:optional
  var padding: Array<Float>;

  /**
    the space in between choices.
  **/
  @:optional
  var space: Float;

  /**
    The current selected choices index.
  **/
  @:optional
  var currentSelectedIndex: Float;

  /**
    If enabled the inside border will be visible.
  **/
  @:optional
  var bordersInsideVisible: Bool;

  /**
    If enabled the inside border will be visible.
  **/
  @:optional
  var bordersVisible: Bool;
};

typedef StructMapElementCollision = {
  @:optional
  var b: Array<Float>;
  @:optional
  var p: Position;
  @:optional
  var l: Vector3;
  @:optional
  var c: Vector3;
  @:optional
  var cs: CollisionSquare;
  @:optional
  var w: Float;
  @:optional
  var h: Float;
  @:optional
  var d: Float;
  @:optional
  var rw: Float;
  @:optional
  var rh: Float;
  @:optional
  var m: Float;
  @:optional
  var t: MapElement;
  @:optional
  var k: Bool;
  @:optional
  var left: Bool;
  @:optional
  var right: Bool;
  @:optional
  var top: Bool;
  @:optional
  var bot: Bool;
  @:optional
  var a: Float;
};
