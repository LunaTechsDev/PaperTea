package pm.core;

import pm.core.Enums.SpriteWallKind;

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
