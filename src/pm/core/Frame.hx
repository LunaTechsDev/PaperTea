package pm.core;

/** @class
 *   A frame for updating animations (characters, battlers, etc.)
 *   @property {number} duration The frame duration
 *   @property {number} tick The frame tick (= time spent since current frame)
 *   @property {number} value The current frame value
 *   @param {number} duration The frame duration
 *   @param {number} [tick=0] The frame tick (= time spent since current frame)
 *   @param {number} [value=0] The current frame value
 */
extern class Frame {
  public var duration: Float;
  public var tick: Float;
  public var value: Float;

  public function new(duration: Int, tick: Float = 0, value: Float = 0);

  /** Update frame according to tick and duration, return true if frame is 
   *   different
   *   @param {number} [duration=this.duration] The frame duration
   *   @returns {boolean}
   */
  public function update(?duration: Int): Bool;
}
