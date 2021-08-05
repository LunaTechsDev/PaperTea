package pm.eventcommand;

import pm.system.MapObject;

/** @class
 *  An abstract event command.
 */
@:native('Base')
@:js.import('../../System/EventCommand/Base.js')
extern class Base {
  function new();
  var isDirectNode: Bool;
  var parallel: Bool;

  // TODO: Potentially change the dynamic to Any or a object type

  /**
    Initialize the current state.
  **/
  function initialize(): Dynamic;

  /**
    Update and check if the event is finished.
  **/
  function update(?currentState: {}, ?object: MapObject, ?state: Float): Float;

  /**
    First key press handle for the current stack.
  **/
  function onKeyPressed(currentState: Dynamic, key: Float): Void;

  /**
    First key release handle for the current stack.
  **/
  function onKeyReleased(currentState: Dynamic, key: Float): Void;

  /**
    Key pressed repeat handle for the current stack.
  **/
  function onKeyPressedRepeat(currentState: Dynamic, key: Float): Bool;

  /**
    Key pressed repeat handle for the current stack, but with
    a small wait after the first pressure (generally used for menus).
  **/
  function onKeyPressedAndRepeat(currentState: Dynamic, key: Float): Bool;

  /**
    Draw the HUD.
  **/
  function drawHUD(?currentState: Dynamic): Void;

  static var prototype: Base;
}
