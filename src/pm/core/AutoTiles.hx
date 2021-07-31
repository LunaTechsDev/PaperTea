package pm.core;

import pm.core.Types.StructMapElementCollision;

extern class Autotiles {
  function new(bundle: TextureBundle);
  var bundle: TextureBundle;
  var width: Float;
  var height: Float;
  var geometry: Dynamic;
  var mesh: Dynamic;
  var index: Float;

  /**
    Update the geometry of the autotiles according to an autotile and its
    position.
  **/
  function updateGeometry(position: Position, autotile: Autotile): StructMapElementCollision;

  /**
    Create a mesh with material and geometry.
  **/
  function createMesh(): Void;

  static var prototype: Autotiles;
  static var COUNT_LIST: Float;
  static var LIST_A: Array<String>;
  static var LIST_B: Array<String>;
  static var LIST_C: Array<String>;
  static var LIST_D: Array<String>;

  static var AUTOTILE_BORDER: {
    var A1: Float;
    var B1: Float;
    var C1: Float;
    var D1: Float;
    var A2: Float;
    var B4: Float;
    var A4: Float;
    var B2: Float;
    var C5: Float;
    var D3: Float;
    var C3: Float;
    var D5: Float;
    var A5: Float;
    var B3: Float;
    var A3: Float;
    var B5: Float;
    var C2: Float;
    var D4: Float;
    var C4: Float;
    var D2: Float;
  };
}
