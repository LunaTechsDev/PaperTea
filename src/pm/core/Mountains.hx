package pm.core;

import pm.core.Types.StructMapElementCollision;

/** @class
 *  The wrapper class for handle mountains sharing the same texture.
 *  @param {TextureBundle} texture
 */
@:native('Mountains')
@:js.import('../../System/Core/Mountains.js')
extern class Mountains {
  function new(bundle: TextureBundle);
  var bundle: TextureBundle;
  var width: Float;
  var height: Float;
  var geometry: Dynamic;
  var count: Float;
  var mesh: Dynamic;

  /**
    Update the geometry of the mountains according to a mountain.
  **/
  function updateGeometry(position: Position, mountain: Mountain): Array<StructMapElementCollision>;

  /**
    Create a mesh with material and geometry.
  **/
  function createMesh(): Void;

  static var prototype: Mountains;
}
