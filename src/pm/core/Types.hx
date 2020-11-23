package pm.core;

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
