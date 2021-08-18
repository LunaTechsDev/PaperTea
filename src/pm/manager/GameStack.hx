package pm.manager;

import ts.Tuple2;
import pm.core.Picture2D;
import pm.scene.SceneTitleScreen;
import pm.scene.SceneGame;
import pm.scene.Loading;

/** @class
 *   The game stack that is organizing the game scenes
 *   @property {SceneGame[]} content The stack content
 *   @property {SceneGame[]} top The stack top content
 *   @property {SceneGame[]} subTop The stack top - 1 content
 *   @property {SceneGame[]} bot The stack bot content
 */
@:native('Stack')
@:js.import('../../System/Manager/Stack.js')
// TODO: Check for any missing data
extern class GameStack {
  public static var content: Array<SceneGame>;
  public static var top: Array<SceneGame>;
  public static var subTop: Array<SceneGame>;
  public static var bot: Array<SceneGame>;
  public static var requestPaintHUD: Bool;
  public static var sceneLoading: Loading;
  public static var loadingDelay: Float;
  public static var elapsedTime: Float;
  public static var averageElapsedTime: Float;
  public static var lastUpdateTime: Int;
  public static var displayedPictures: Array<Tuple2<Float, Picture2D>>;
  public static var isInMainMenu: Bool;

  public function new(): Void;

  /** 
   * Push a new scene in the stack
   *   @param {SceneGame} scene The scene to push
   */
  public static function push(scene: SceneGame): Void;

  /** 
   * Pop (remove) the last scene in the stack
   *   @returns {SceneGame} The last scene that is removed
   */
  public static function pop(): SceneGame;

  /**
   * Pop(remove) all the scenes in the stacks.
   * @return SceneGame
   */
  public static function popAll(): SceneGame;

  /** 
   * Replace the last scene in the stack by a new scene
   *   @param {SceneGame} scene The scene to replace
   *   @returns {SceneGame} The last scene that is replaced
   */
  public static function replace(scene: SceneGame): SceneGame;

  /** 
   * Get the scene at a specific index in the stack. 0 is the bottom of the
   *   stack
   *   @param {number} i Index in the stack
   *   @returns {SceneGame} The scene in the index of the stack
   */
  public static function at(i: Int): SceneGame;

  /** Check if the stack is empty
   *   @returns {boolean}
   */
  public static function isEmpty(): Bool;

  /** 
   * Check if top content is loading
   *   @returns {boolean}
   */
  public static function isLoading(): Bool;

  /** 
   * Push the title screen when empty
   *   @returns {SceneTitleScreen}
   */
  public static function pushTitleScreen(): SceneTitleScreen;

  /** 
   * Update the stack
   */
  public static function update(): Void;

  /** 
   * First key press handle for the current stack
   *   @param {number} key The key ID pressed
   */
  public static function onKeyPressed(key: Int): Void;

  /** 
   * First key release handle for the current stack
   *   @param {number} key The key ID released
   */
  public static function onKeyReleased(key: Int): Void;

  /** 
   * Key pressed repeat handle for the current stack
   *   @param {number} key The key ID pressed
   *   @returns {boolean} false if the other keys are blocked after it
   */
  public static function onKeyPressedRepeat(key: Int): Bool;

  /** 
   * Key pressed repeat handle for the current stack, but with
   *   a small wait after the first pressure (generally used for menus)
   *   @param {number} key The key ID pressed
   *   @returns {boolean} false if the other keys are blocked after it
   */
  public static function onKeyPressedAndRepeat(key: Int): Bool;

  /**
   * Draws 3D scene
   */
  public static function draw3D(): Void;

  /**
   * Draw HUD scene
   */
  public static function drawHUD(): Void;
}
