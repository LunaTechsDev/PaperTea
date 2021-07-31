package pm.core;

extern class Chrono {
  function new(?start: Float, ?id: Float, ?reverse: Bool, ?displayOnScreen: Bool);
  var id: Float;
  var time: Float;
  var lastTime: Float;
  var reverse: Bool;
  var paused: Bool;
  var graphic: Dynamic;
  var finished: Bool;

  /**
    Get time time in seconds.
  **/
  function getSeconds(): Float;

  /**
    Pause the chrono.
  **/
  function pause(): Void;

  /**
    Continue the chrono (if paused).
  **/
  @:native("continue")
  function continue_(): Void;

  /**
    Update the chrono. If reverse, return true if time reach 0.
  **/
  function update(): Bool;

  /**
    Draw the HUD chrono.
  **/
  function drawHUD(): Void;

  static var prototype: Chrono;
}
