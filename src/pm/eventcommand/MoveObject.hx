package pm.eventcommand;

import pm.core.Enums.Orientation;
import pm.system.MapObject;
import pm.core.Enums.CommandMoveKind;

/** @class
 *  An event command for moving object.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('MoveObject')
@:js.import('../../System/EventCommand/MoveObject.js')
extern class MoveObject extends Base {
  function new(command: Array<Dynamic>);
  var objectID: Dynamic;
  var isIgnore: Bool;
  var isWaitEnd: Bool;
  var isCameraOrientation: Bool;
  var moves: Array<haxe.Constraints.Function>;
  var parameters: Array<{}>;
  var kind: CommandMoveKind;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Function to move north.
  **/
  function move(currentState: {}, object: MapObject, square: Bool, orientation: Orientation): Bool;

  /**
    Change the frequency tick of the object.
  **/
  function moveFrequency(object: MapObject): Void;

  /**
    Function to move north.
  **/
  function moveNorth(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to move south.
  **/
  function moveSouth(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to move west.
  **/
  function moveWest(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to move east.
  **/
  function moveEast(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to move north west.
  **/
  function moveNorthWest(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to move north west.
  **/
  function moveNorthEast(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to move north west.
  **/
  function moveSouthWest(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to move north west.
  **/
  function moveSouthEast(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to move random.
  **/
  function moveRandom(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to move hero.
  **/
  function moveHero(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to move opposite to hero.
  **/
  function moveOppositeHero(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to move hero and opposite hero.
  **/
  function moveHeroAndOpposite(currentState: {}, object: MapObject, parameters: {},
    opposite: Bool): ts.AnyOf2<Bool, Int>;

  /**
    Function to move front.
  **/
  function moveFront(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to move back.
  **/
  function moveBack(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to jump.
  **/
  function jump(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to look at north.
  **/
  function turnNorth(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to look at south.
  **/
  function turnSouth(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to look at west.
  **/
  function turnWest(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to look at east.
  **/
  function turnEast(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to look at 90° right.
  **/
  function turn90Right(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to look at 90° left.
  **/
  function turn90Left(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to look at hero.
  **/
  function lookAtHero(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to look at hero opposite.
  **/
  function lookAtHeroOpposite(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to change graphics.
  **/
  function changeGraphics(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to change speed.
  **/
  function changeSpeed(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to change frequency.
  **/
  function changeFrequency(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to move animation.
  **/
  function moveAnimation(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to stop animation.
  **/
  function stopAnimation(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to climb animation.
  **/
  function climbAnimation(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to direction fix.
  **/
  function directionFix(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to through.
  **/
  function through(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to set with camera.
  **/
  function setWithCamera(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to pixel offset.
  **/
  function pixelOffset(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to keep position.
  **/
  function keepPosition(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Function to wait, play a sound, and script.
  **/
  function useCommand(currentState: {}, object: MapObject, parameters: {}): ts.AnyOf2<Bool, Int>;

  /**
    Get the hero orientation.
  **/
  function getHeroOrientation(object: MapObject): Orientation;

  /**
    Get the current orientation.
  **/
  function getCurrentOrientation(currentState: {}): Orientation;

  /**
    Get the permanent options. Returns null if startup object.
  **/
  function getPermanentOptions(object: MapObject): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: MoveObject;

  /**
    Get the opposite orientation.
  **/
  static function oppositeOrientation(orientation: Orientation): Orientation;
}
