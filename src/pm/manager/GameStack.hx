package pm.manager;

import pm.scene.SceneTitleScreen;
import pm.scene.SceneGame;

/** @class
 *   The game stack that is organizing the game scenes
 *   @property {SceneGame[]} content The stack content
 *   @property {SceneGame[]} top The stack top content
 *   @property {SceneGame[]} subTop The stack top - 1 content
 *   @property {SceneGame[]} bot The stack bot content
 */
extern class GameStack {
  public var content: Array<SceneGame>;
  public var top: Array<SceneGame>;
  public var subTop: Array<SceneGame>;
  public var bot: Array<SceneGame>;

  public function new(): Void;

  /** 
   * Push a new scene in the stack
   *   @param {SceneGame} scene The scene to push
   */
  public function push(scene: SceneGame): Void;

  /** 
   * Pop (remove) the last scene in the stack
   *   @returns {SceneGame} The last scene that is removed
   */
  public function pop(): SceneGame;

  /**
   * Pop(remove) all the scenes in the stacks.
   * @return SceneGame
   */
  public function popAll(): SceneGame;

  /** 
   * Replace the last scene in the stack by a new scene
   *   @param {SceneGame} scene The scene to replace
   *   @returns {SceneGame} The last scene that is replaced
   */
  public function replace(scene: SceneGame): SceneGame;

  /** 
   * Get the scene at a specific index in the stack. 0 is the bottom of the
   *   stack
   *   @param {number} i Index in the stack
   *   @returns {SceneGame} The scene in the index of the stack
   */
  public function at(i: Int): SceneGame;

  /** Check if the stack is empty
   *   @returns {boolean}
   */
  public function isEmpty(): Bool;

  /** 
   * Check if top content is loading
   *   @returns {boolean}
   */
  public function isLoading(): Bool;

  /** 
   * Push the title screen when empty
   *   @returns {SceneTitleScreen}
   */
  public function pushTitleScreen(): SceneTitleScreen;

  /** 
   * Update the stack
   */
  public function update(): Void;

  /** 
   * First key press handle for the current stack
   *   @param {number} key The key ID pressed
   */
  public function onKeyPressed(key: Int): Void;

  /** 
   * First key release handle for the current stack
   *   @param {number} key The key ID released
   */
  public function onKeyReleased(key: Int): Void;

  /** 
   * Key pressed repeat handle for the current stack
   *   @param {number} key The key ID pressed
   *   @returns {boolean} false if the other keys are blocked after it
   */
  public function onKeyPressedRepeat(key: Int): Bool;

  /** 
   * Key pressed repeat handle for the current stack, but with
   *   a small wait after the first pressure (generally used for menus)
   *   @param {number} key The key ID pressed
   *   @returns {boolean} false if the other keys are blocked after it
   */
  public function onKeyPressedAndRepeat(key: Int): Bool;

  /**
   * Draws 3D scene
   */
  public function draw3D(): Void;

  /**
   * Draw HUD scene
   */
  public function drawHUD(): Void;
}
