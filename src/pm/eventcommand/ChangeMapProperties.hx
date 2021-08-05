package pm.eventcommand;

import pm.system.PlaySong;
import pm.system.DynamicValue;
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
  var mapID: DynamicValue;
  var isTilesetID: Bool;
  var tilesetID: DynamicValue;
  var isMusic: Bool;
  var music: PlaySong;
  var isBackgroundSound: Bool;
  var backgroundSound: PlaySong;
  var isCameraPropertiesID: Bool;
  var cameraPropertiesID: DynamicValue;
  var isSky: Bool;
  var skyKind: Float;
  var skyID: DynamicValue;

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
