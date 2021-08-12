package pm.scene;

import pm.core.MapPortion;
import pm.core.TextureBundle;
import pm.core.Vector3;
import pm.core.Frame;
import js.three.ShaderMaterial;

/** @class
 *  A scene for a local map.
 *  @extends Scene.Base
 *  @param {number} id - The map ID
 *  @param {boolean} [isBattleMap=false] - Indicate if this map is a battle one
 *  @param {boolean} [minimal=false] - Indicate if the map should be partialy 
 *  loaded (only for getting objects infos)
 */
@:native('Map')
@:js.import('../../System/Scene/Map.js')
extern class Map_ extends Base {
  function new(id: Float, ?isBattleMap: Bool, ?minimal: Bool, ?heroOrientation: Orientation);
  var id: Float;
  var mapName: String;
  var orientation: Orientation;
  var user: Battler;
  var isBattleMap: Bool;
  var tempTargets: Array<Battler>;
  var targets: Array<Battler>;
  var battleCommandKind: EffectSpecialActionKind;
  var mapProperties: MapPortion;
  var scene: js.three.Scene;
  var allObjects: Array<Position>;
  var currentPortion: Portion;
  var mapPortions: Array<MapPortion>;
  var textureTileset: ShaderMaterial;
  var texturesCharacters: Array<ShaderMaterial>;
  var texturesAutotiles: Array<TextureBundle>;
  var texturesWalls: Array<ShaderMaterial>;
  var texturesMountains: Array<TextureBundle>;
  var texturesObjects3D: Array<ShaderMaterial>;
  var collisions: Array<Array<Array<Array<Float>>>>;
  var previousCameraPosition: Vector3;
  var portionsObjectsUpdated: Bool;
  var maxObjectsID: Float;
  var autotileFrame: Frame;
  var autotilesOffset: Vector2;
  var heroOrientation: Orientation;

  /**
    Read the map properties file.
  **/
  function readMapProperties(?minimal: Bool): js.lib.Promise<Void>;

  /**
    Get all the possible targets of a skill.
  **/
  function getPossibleTargets(targetKind: TargetKind): Array<Player>;

  /**
    Initialize the map objects.
  **/
  function initializeCamera(): Void;

  /**
    Initialize the map objects.
  **/
  function initializeObjects(): js.lib.Promise<Void>;

  /**
    Initialize all the objects moved or / and with changed states.
  **/
  function initializePortionsObjects(): Void;

  /**
    Load all the textures of the map.
  **/
  function loadTextures(): js.lib.Promise<Void>;

  /**
    Load the collisions settings.
  **/
  function loadCollisions(): Void;

  /**
    Initialize the map portions.
  **/
  function initializePortions(): js.lib.Promise<Void>;

  /**
    Get the portion file name.
  **/
  function loadPortions(?noNewPortion: Bool): js.lib.Promise<Void>;

  /**
    Load a portion.
  **/
  function loadPortion(realX: Float, realY: Float, realZ: Float, x: Float, y: Float, z: Float,
    ?move: Bool): js.lib.Promise<Void>;

  /**
    Load a portion from a portion.
  **/
  function loadPortionFromPortion(portion: Portion, x: Float, y: Float, z: Float, move: Bool): js.lib.Promise<Void>;

  /**
    Remove a portion.
  **/
  function removePortion(x: Float, y: Float, z: Float): Void;

  /**
    Set a portion.
  **/
  function setPortion(i: Float, j: Float, k: Float, m: Float, n: Float, o: Float): Void;

  /**
    Set a portion.
  **/
  function setMapPortion(x: Float, y: Float, z: Float, mapPortion: MapPortion, move: Bool): Void;

  /**
    Get the objects at a specific portion.
  **/
  function getObjectsAtPortion(portion: Portion): {};

  /**
    Get a map portion at local postions.
  **/
  function getMapPortion(portion: Portion): MapPortion;

  /**
    Get a map portion at json position.
  **/
  function getMapPortionByPosition(position: Position): MapPortion;

  /**
    Get map portion according to portion index.
  **/
  function getBrutMapPortion(index: Float): MapPortion;

  /**
    Get portion index according to local position.
  **/
  function getPortionIndex(portion: Portion): Float;

  /**
    Set a local portion with a global portion.
  **/
  function getLocalPortion(portion: Portion): Portion;

  /**
    Get the map portion limit.
  **/
  function getMapPortionLimit(): Float;

  /**
    Get the map portions size.
  **/
  function getMapPortionSize(): Float;

  /**
    Get the map portion total size.
  **/
  function getMapPortionTotalSize(): Float;

  /**
    Check if a local portion if in the limit
  **/
  function isInPortion(portion: Portion): Bool;

  /**
    Check if a position is in the map.
  **/
  function isInMap(position: Position): Bool;

  /**
    Get the hero position according to battle map.
  **/
  function getHeroPosition(): Vector3;

  /**
    Update the background color.
  **/
  function updateBackgroundColor(): Void;

  /**
    Load collision for special elements.
  **/
  function loadSpecialsCollision(list: Array<Float>, kind: PictureKind, specials: Array<Dynamic>): Void;

  /**
    Update moving portions.
  **/
  function updateMovingPortions(): Void;

  /**
    Update moving portions for east and west.
  **/
  function updateMovingPortionsEastWest(newPortion: Portion): Void;

  /**
    Update moving portions for north and south.
  **/
  function updateMovingPortionsNorthSouth(newPortion: Portion): Void;

  /**
    Update moving portions for up and down
  **/
  function updateMovingPortionsUpDown(newPortion: Portion): Void;

  /**
    Update portions according to a callback.
  **/
  function updatePortions(base: Dynamic, callback: haxe.Constraints.Function): Void;

  static var prototype: Map_;
  static var current: Dynamic;
  static var allowMainMenu: Bool;
  static var allowSaves: Bool;

  /**
    Generate the map name according to the ID.
  **/
  static function generateMapName(id: Float): String;
}
