package pm.manager;

import ts.Tuple2;
import pm.core.Picture2D;
import pm.scene.SceneTitleScreen;
import pm.scene.Base as SceneBase;
import pm.scene.Loading;

/** @class
 *   The game stack that is organizing the game scenes
 *   @property {SceneBase[]} content The stack content
 *   @property {SceneBase[]} top The stack top content
 *   @property {SceneBase[]} subTop The stack top - 1 content
 *   @property {SceneBase[]} bot The stack bot content
 */
@:native('Stack')
@:js.import('../../System/Manager/Stack.js')
// TODO: Check for any missing data
extern class GameStack {
  public static var content: Array<SceneBase>;
  public static var top: Array<SceneBase>;
  public static var subTop: Array<SceneBase>;
  public static var bot: Array<SceneBase>;
  public static var requestPaintHUD: Bool;
  public static var sceneLoading: Loading;
  public static var loadingDelay: Float;
  public static var elapsedTime: Float;
  public static var averageElapsedTime: Float;
  public static var lastUpdateTime: Float;
  public static var displayedPictures: Array<Tuple2<Float, Picture2D>>;
  public static var isInMainMenu: Bool;

  public function new(): Void;

  /** 
   * Push a new scene in the stack
   *   @param {SceneBase} scene The scene to push
   */
  public static function push(scene: SceneBase): Void;

  /** 
   * Pop (remove) the last scene in the stack
   *   @returns {SceneBase} The last scene that is removed
   */
  public static function pop(): SceneBase;

  /**
   * Pop(remove) all the scenes in the stacks.
   * @return SceneBase
   */
  public static function popAll(): SceneBase;

  /** 
   * Replace the last scene in the stack by a new scene
   *   @param {SceneBase} scene The scene to replace
   *   @returns {SceneBase} The last scene that is replaced
   */
  public static function replace(scene: SceneBase): SceneBase;

  /** 
   * Get the scene at a specific index in the stack. 0 is the bottom of the
   *   stack
   *   @param {number} i Index in the stack
   *   @returns {SceneBase} The scene in the index of the stack
   */
  public static function at(i: Int): SceneBase;

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
