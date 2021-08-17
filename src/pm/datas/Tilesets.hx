package pm.datas;

import pm.core.TextureBundle;
import pm.core.Enums.PictureKind;
import js.three.ShaderMaterial;
import pm.system.Tileset;

/**
 * @class
 * All the tileset data.
 * @static
 */
@:native('Tilesets')
@:js.import('../../System/Datas/Tilesets.js')
extern class Tilesets {
  function new();
  static var prototype: Tilesets;
  static var PROPERTY_TEXTURES_CHARACTERS: String;
  static var PROPERTY_TEXTURES_BATTLERS: String;
  static var PROPERTY_TEXTURES_OBJECTS_3D: String;
  private static var list: Array<Tileset>;

  /**
   * Record<string, System.Tileset>
   */
  private static var autotiles: Dynamic;

  /**
   * Record<string, System.Tileset>
   * 
   */
  private static var walls: Dynamic;

  /**
   * Record<string, System.Tileset>
   */
  private static var mountains: Dynamic;

  static var texturesCharacters: Array<ShaderMaterial>;
  static var texturesBattlers: Array<ShaderMaterial>;
  static var texturesObjects3D: Array<ShaderMaterial>;

  /**
    Read the JSON file associated to tilesets.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the tileset by ID.
  **/
  static function get(id: Float): Dynamic;

  /**
    Load pictures.
  **/
  static function loadPictures(pictureKind: PictureKind, texturesName: String): js.lib.Promise<Void>;

  /**
    Get the autotiles textures.
  **/
  static function getTexturesAutotiles(tileset: Tileset): Array<TextureBundle>;

  /**
    Get the mountains textures.
  **/
  static function getTexturesMountains(tileset: Tileset): Array<TextureBundle>;

  /**
    Get the walls textures.
  **/
  static function getTexturesWalls(tileset: Tileset): Array<ShaderMaterial>;
}
