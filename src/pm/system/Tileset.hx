package pm.system;

import pm.core.TextureBundle;
import pm.core.CollisionSquare;

/** @class
 *  A tileset of the game.
 *  @extends System.Base
 *  @param {Record<string, any>} - json Json object describing the tileset
 */
@:native('Tileset')
@:js.import('../../System/System/Tileset.js')
extern class Tileset extends Base {
  function new(?json: {});
  var collisions: Array<CollisionSquare>;
  var ownsAutotiles: Bool;
  var ownsMountains: Bool;
  var ownsWalls: Bool;
  var id: Float;
  var picture: Dynamic;
  var autotiles: Array<Float>;
  var walls: Array<Float>;
  var mountains: Array<Float>;
  var objects: Array<Float>;
  var texturesAutotiles: Array<TextureBundle>;
  var texturesMountains: Array<TextureBundle>;
  var texturesWalls: Array<Dynamic>;

  /**
    Assign the default members.
  **/
  function setup(): Void;

  /**
    Get the path to the picture tileset.
  **/
  function getPath(): String;

  /**
    Get the string logic for special elements.
  **/
  function getSpecialString(specials: Array<Float>): String;

  /**
    Get the string logic for autotiles.
  **/
  function getAutotilesString(): String;

  /**
    Get the string logic for walls.
  **/
  function getWallsString(): String;

  /**
    Get the string logic for mountains.
  **/
  function getMountainsString(): String;

  /**
    Get the max possible offset of an autotile texture.
  **/
  function getMaxAutotilesOffsetTexture(): Float;

  /**
    Get the max possible offset of a mountain texture.
  **/
  function getMaxMountainOffsetTexture(): Float;

  /**
    Load all the specials
  **/
  function loadSpecials(): js.lib.Promise<Void>;

  /**
    Load all the autotiles with reduced files.
  **/
  function loadAutotiles(): js.lib.Promise<Void>;

  /**
    Load an autotile ID and add it to context rendering.
  **/
  function loadTextureAutotile(textureAutotile: TextureBundle, texture: Dynamic, picture: Dynamic, offset: Float,
    id: Float, isAnimated: Bool): js.lib.Promise<Array<Dynamic>>;

  /**
    Paint the picture in texture.
  **/
  function paintPictureAutotile(img: js.html.ImageElement, offset: Float, point: Array<Float>, id: Float): Void;

  /**
    Update texture of a TextureAutotile.
  **/
  function updateTextureAutotile(textureAutotile: TextureBundle, texture: Dynamic): js.lib.Promise<Void>;

  /**
    Load all the mountains with reduced files
  **/
  function loadMountains(): js.lib.Promise<Void>;

  /**
    Load a mountain ID and add it to context rendering
  **/
  function loadTextureMountain(textureMountain: TextureBundle, texture: Dynamic, picture: Dynamic, offset: Float,
    id: Float): js.lib.Promise<Array<Dynamic>>;

  /**
    Paint the picture in texture.
  **/
  function paintPictureMountain(img: js.html.ImageElement, offset: Float, id: Float): Void;

  /**
    Update texture of a TextureSeveral.
  **/
  function updateTextureMountain(textureMountain: TextureBundle, texture: Dynamic): js.lib.Promise<Void>;

  /**
    Load all the walls
  **/
  function loadWalls(): js.lib.Promise<Void>;

  /**
    Load a wall texture.
  **/
  function loadTextureWall(picture: Dynamic, id: Float): js.lib.Promise<Dynamic>;

  static var prototype: Tileset;
}
