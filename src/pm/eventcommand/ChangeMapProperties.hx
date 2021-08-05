package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An event command for changing a map properties.
 *  @extends EventCommand.Base
 *  @param {Object} command - Direct JSON command to parse
 */
@:native('ChangeMapProperties')
@:js.import('../../System/EventCommand/ChangeMapProperties.js')
extern class ChangeMapProperties extends Base {
  function new(command: Array<Dynamic>);
  var mapID: Dynamic;
  var isTilesetID: Bool;
  var tilesetID: Dynamic;
  var isMusic: Bool;
  var music: Dynamic;
  var isBackgroundSound: Bool;
  var backgroundSound: Dynamic;
  var isCameraPropertiesID: Bool;
  var cameraPropertiesID: Dynamic;
  var isSky: Bool;
  var skyKind: Float;
  var skyID: Dynamic;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeMapProperties;
}
