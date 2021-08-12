package pm.scene;

import pm.core.ReactionInterpreter;
import pm.system.Camera;
import pm.system.MapObject;

/**
  The superclass who shape the structure of a scene.
**/
@:native('Base')
@:js.import('../../System/Scene/Base.js')
extern class Base {
  function new(?loading: Bool, args: haxe.extern.Rest<Any>);

  /**
    An array of reaction interpreters.
  **/
  var reactionInterpreters: Array<ReactionInterpreter>;

  /**
    An array of reaction interpreters caused by effects.
  **/
  var reactionInterpretersEffects: Array<ReactionInterpreter>;

  /**
    the array holding parallel commands.
  **/
  var parallelCommands: Array<ReactionInterpreter>;

  /**
    the async loading flag.
  **/
  var loading: Bool;

  /**
    The scene camera.
  **/
  var camera: Camera;

  function initialize(args: haxe.extern.Rest<Any>): Void;

  /**
    assign and create all the contents of the scene synchronously.
  **/
  function create(): Void;

  /**
    Load the scene asynchronous contents.
  **/
  function load(): js.lib.Promise<Void>;

  /**
    Translate the scene if possible.
  **/
  function translate(): Void;

  /**
    Update all the reaction interpreters from the scenes.
  **/
  function updateInterpreters(): Void;

  /**
    Update all the parallel commands from the scenes.
  **/
  function updateParallelCommands(): Void;

  /**
    Add a reaction in the interpreter list.
  **/
  function addReaction(sender: MapObject, reaction: Dynamic, object: MapObject, state: Float,
    parameters: Array<Dynamic>, event: ts.Tuple2<Dynamic, Float>, ?moving: Bool): ReactionInterpreter;

  /**
    Update the scene.
  **/
  function update(): Void;

  /**
    Handle the scene reactions when a key is pressed.
  **/
  function onKeyPressed(key: Float): Void;

  /**
    Handle the scene reactions when a key is released.
  **/
  function onKeyReleased(key: Float): Void;

  /**
    Handle the scene reactions when a key is repeated
  **/
  function onKeyPressedRepeat(key: Float): Bool;

  /**
    Handle scene reactions when a key is pressed and repeated
  **/
  function onKeyPressedAndRepeat(key: Float): Bool;

  /**
    Draw the contents in the 3D scene.
  **/
  function draw3D(): Void;

  /**
    Draw the HUD contents on the scene.
  **/
  function drawHUD(): Void;

  /**
    Close the scene.
  **/
  function close(): Void;

  static var prototype: Base;
}
