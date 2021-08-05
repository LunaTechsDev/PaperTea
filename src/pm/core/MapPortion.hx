package pm.core;

import pm.system.MapObject;
import pm.core.Types.StructMapElementCollision;
import pm.core.Enums.ElementMapKind;

@:native('MapPortion')
@:js.import('../../System/Core/MapPortion.js')
extern class MapPortion {
  function new(portion: Portion);
  var portion: Portion;
  var staticFloorsMesh: Dynamic;
  var staticSpritesMesh: Dynamic;
  var squareNonEmpty: Array<Array<Array<Float>>>;
  var boundingBoxesLands: Array<Array<StructMapElementCollision>>;
  var boundingBoxesSprites: Array<Array<StructMapElementCollision>>;
  var boundingBoxesMountains: Array<Array<StructMapElementCollision>>;
  var boundingBoxesObjects3D: Array<Array<StructMapElementCollision>>;
  var staticAutotilesList: Array<Autotiles>;
  var staticMountainsList: Array<Mountains>;
  var objectsList: Array<MapObject>;
  var faceSpritesList: Array<Dynamic>;
  var staticWallsList: Array<Dynamic>;
  var staticObjects3DList: Array<Dynamic>;
  var overflowMountains: Array<Position>;
  var heroID: Float;

  /**
    Read the JSON associated to the map portion.
  **/
  function read(json: {}, isMapHero: Bool): Void;

  /**
    Read the JSON associated to the lands in the portion.
  **/
  function readLands(json: {}): Void;

  /**
    Read the JSON associated to the floors in the portion.
  **/
  function readFloors(json: {}): Void;

  /**
    Read the JSON associated to the autotiles in the portion.
  **/
  function readAutotiles(json: {}): Void;

  /**
    Read the JSON associated to the sprites in the portion.
  **/
  function readSprites(json: {}): Void;

  /**
    Read the JSON associated to the sprites globals in the portion.
  **/
  function readSpritesGlobals(json: {}): Void;

  /**
    Read the JSON associated to the sprites walls in the portion.
  **/
  function readSpritesWalls(json: {}): Void;

  /**
    Read the JSON associated to the mountains in the portion.
  **/
  function readMountains(json: {}): Void;

  /**
    Read the JSON associated to the objects 3D in the portion.
  **/
  function readObjects3D(json: {}): Void;

  /**
    Read the JSON associated to the objects in the portion.
  **/
  function readObjects(json: {}, isMapHero: Bool): Void;

  /**
    Remove all the objects from the scene.
  **/
  function cleanAll(): Void;

  /**
    Search for the object with the ID.
  **/
  function getObjFromID(json: {}, id: Float): MapObject;

  /**
    Get hero model.
  **/
  function getHeroModel(json: {}): MapObject;

  /**
    Update the face sprites orientation.
  **/
  function updateFaceSprites(angle: Float): Void;

  /**
    Update the collision sprite.
  **/
  function updateCollisionSprite(collisions: Array<StructMapElementCollision>, position: Position): Void;

  /**
    Update the collision sprite
  **/
  function updateCollision(boundingBoxes: Array<{}>, collisions: Array<StructMapElementCollision>, position: Position,
    side: Bool): Void;

  /**
    Get the object collision according to position.
  **/
  function getObjectCollisionAt(positionSource: Position, positionTarget: Position,
    kind: ElementMapKind): Array<StructMapElementCollision>;

  /**
    Add a position to non empty.
  **/
  function addToNonEmpty(position: Position): Void;

  /**
    Check if position if in this map portion.
  **/
  function isPositionIn(position: Position): Bool;

  static var prototype: MapPortion;
}
