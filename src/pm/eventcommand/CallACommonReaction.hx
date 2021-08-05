package pm.eventcommand;

import pm.system.MapObject;

@:native('CallACommonReaction')
@:js.import('../../System/EventCommand/CallACommonReaction.js')
extern class CallACommonReaction extends Base {
  function new(command: Array<Dynamic>);
  var commonReactionID: Float;
  var parameters: Array<Dynamic>;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  /**
    First key press handle for the current stack.
  **/
  function onKeyPressed(currentState: {}, key: Float): Void;

  /**
    First key release handle for the current stack.
  **/
  function onKeyReleased(currentState: {}, key: Float): Void;

  /**
    Key pressed repeat handle for the current stack.
  **/
  function onKeyPressedRepeat(currentState: {}, key: Float): Bool;

  /**
    Key pressed repeat handle for the current stack, but with
    a small wait after the first pressure (generally used for menus).
  **/
  function onKeyPressedAndRepeat(currentState: {}, key: Float): Bool;

  /**
    Draw the HUD.
  **/
  function drawHUD(currentState: {}): Void;

  static var prototype: CallACommonReaction;
}
