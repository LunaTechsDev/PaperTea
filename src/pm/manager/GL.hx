package pm.manager;

import pm.core.Vector2;
import pm.core.Vector3;

/** @class
 *  The GL class handling some 3D stuff.
 *  @static
 */
@:native('GL')
@:js.import('../../System/Manager/GL.js')
extern class GL {
  function new();
  static var prototype: GL;
  static var SHADER_FIX_VERTEX: String;
  static var SHADER_FIX_FRAGMENT: String;
  static var renderer: Dynamic;
  static var textureLoader: Dynamic;
  static var screenTone: Dynamic;

  /**
    Initialize the openGL stuff.
  **/
  static function initialize(): Void;

  /**
    Load shaders stuff.
  **/
  static function load(): js.lib.Promise<Void>;

  /**
    Set the camera aspect while resizing the window.
  **/
  static function resize(): Void;

  /**
    Load a texture.
  **/
  static function loadTexture(path: String): js.lib.Promise<Dynamic>;

  /**
    Load a texture empty.
  **/
  static function loadTextureEmpty(): Dynamic;

  /**
    Create a material from texture.
  **/
  static function createMaterial(texture: Dynamic,
    ?opts: {@:optional var flipX: Bool; @:optional var flipY: Bool; @:optional var uniforms: {};}): Dynamic;

  /**
    Get material THREE.Texture (if exists).
  **/
  static function getMaterialTexture(material: Dynamic): Dynamic;

  /**
    Update the background color
  **/
  static function updateBackgroundColor(color: Dynamic): Void;

  /**
    Convert 3D vector to a 2D point on screen.
  **/
  static function toScreenPosition(vector: Vector3, camera: Dynamic): Vector2;
}
