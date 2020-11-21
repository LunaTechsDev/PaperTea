package pm.scene;

import pm.core.EventCommand;
import pm.core.ReactionInterpreter;

extern class SceneGame {
  public var loading: Bool;
  public var reactionInterpreters: Array<ReactionInterpreter>;
  public var parallelCommands: Array<EventCommand>;
  public function new(): Void;

  /**
   * Loads asynchronously scene data.
   */
  public function load(): Void;

  /**
   * Update the reaction interpreters.
   */
  public function updateInterpreters(): Void;

  /**
   * Updates all parallel commands.
   */
  public function updateParallelCommands(): Void;

  /** Add a reaction in the interpreter list
   *   @param {MapObject} sender The sender of this reaction
   *   @param {SystemReaction} reaction The reaction to add
   *   @param {MapObject} object The object reacting
   *   @param {number} state The state ID
   *   @param {SystemParameter[]} parameters All the parameters coming with
   *   this reaction
   *   @param {number[]} event The time events values
   *   @param {boolean} moving Indicate if command is a moving one
   */
  public function addReaction(sender: Dynamic, reaction: Dynamic, object: Dynamic, state: Int, parameters: Dynamic,
    event: Float, moving: Bool): Void;

  /**
   * Updates the scene
   */
  public function update(): Void;

  /**
   * Handle scene key pressed
   * @param key
   */
  public function onKeyPressed(key: Int): Void;

  /**
   * Handle scene key released
   * @param key
   */
  public function onKeyReleased(key: Int): Void;

  /**
   * Handle key pressed repeatedly on scene
   * @param key
   * @return Bool
   */
  public function onKeyPressRepeat(key: Int): Bool;

  /**
    * Handle key pressed and repeat on scene.
    * @param Key
    * @return Bool:


   */
  public function onKeyPressedAndRepeat(Key: Int): Bool;

  /**
   * Draws 3D scene
   */
  public function draw3D(): Void;

  /**
   * Draw HUD scene
   */
  public function drawHUD(): Void;

  /**
   * Close the scene
   */
  public function close(): Void;
}
