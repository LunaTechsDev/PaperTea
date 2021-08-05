package pm.system;

import js.three.Geometry;
import js.three.Scene;

/** @class
 *  The properties of a map.
 *  @extends System.Base
 */
@:native('MapProperties')
@:js.import('../../System/System/MapProperties.js')
extern class MapProperties extends Base {
  function new();
  var id: Float;
  var name: String;
  var length: Float;
  var width: Float;
  var height: Float;
  var depth: Float;
  var tileset: Dynamic;
  var music: PlaySong;
  var backgroundSound: PlaySong;
  var cameraProperties: CameraProperties;
  var isBackgroundColor: Bool;
  var isBackgroundImage: Bool;
  var backgroundColorID: DynamicValue;
  var backgroundColor: Color;
  var backgroundImageID: Float;
  var backgroundSkyboxID: DynamicValue;
  var startupObject: MapObject;
  var randomBattleMapID: DynamicValue;
  var randomBattles: Array<RandomBattle>;
  var randomBattleNumberStep: DynamicValue;
  var randomBattleVariance: DynamicValue;
  var cameraBackground: js.three.Camera;
  var sceneBackground: Scene;
  var skyboxGeometry: Geometry;

  /**
   * Current number of steps as an integer value
   */
  var currentNumberSteps: Float;

  /**
   * Number of steps as an integer value.
   */
  var maxNumberSteps: Float;

  /**
    Update the background.
  **/
  function updateBackground(): Void;

  /**
    Update the background color.
  **/
  function updateBackgroundColor(): Void;

  /**
    Update the background image.
  **/
  function updateBackgroundImage(): Void;

  /**
    Update the background skybox.
  **/
  function updateBackgroundSkybox(): Void;

  /**
    Update the max steps numbers for starting a random battle.
  **/
  function updateMaxNumberSteps(): Void;

  /**
    Check if a random battle can be started.
  **/
  function checkRandomBattle(): Void;

  static var prototype: MapProperties;
}
