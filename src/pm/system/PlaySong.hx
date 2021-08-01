package pm.system;

import pm.core.Types.PlaySongJSON;
import pm.core.Enums.SongKind;

/**
 * A way to play a song
 */
@:native('PlaySong')
@:js.import('../../System/System/PlaySong.js')
extern class PlaySong extends BaseSystem {
  /**
   * ID of the previous playing music and is initialized to null.
   */
  public static var previousMusic: PlaySong;

  /**
   * ID of currently playing music and is initialized to null.
   */
  public static var currentPlayingMusic: PlaySong;

  public var kind: SongKind;
  public var songID: DynamicValue;
  public var volume: DynamicValue;
  public var isStart: Bool;
  public var start: DynamicValue;
  public var isEnd: Bool;
  public var end: DynamicValue;

  public function new(kind: SongKind, json: PlaySongJSON): Void;

  public function setup(): Void;

  /** 
   * Read the JSON associated to the play song
   * @param {Object} json Json object describing the play song
   */
  public function read(json: PlaySongJSON): Void;

  /**
   *  Set song play to default values
   */
  public function setDefault(): Void;

  /** 
   * Initialize (for music effects)
   */
  public function initialize(): Void;

  /** Update all the specified values
   * @param {SystemValue} songID The song ID
   * @param {SystemValue} volume The volume to play
   * @param {boolean} isStart Indicate if there's a start value
   * @param {SystemValue} start The start of the song to play
   * @param {boolean} isEnd Indicate if there's a end value
   * @param {SystemValue} end The end of the song to play
   */
  public function updateValues(songID: DynamicValue, volume: DynamicValue, isStart: Bool, start: DynamicValue,
    isEnd: Bool, end: DynamicValue): Void;

  /** 
   * Play the music
   * @param {number} [start=undefined] The start of the song to play
   * @param {number} [volume=undefined] The volume to play
   */
  public function playMusic(?start: Float, ?volume: Float): Void;

  /** 
   * Play the sound
   */
  public function playSound(): Void;

  /** Play the music effect and return the next node value
   * @param {Object} currentState The current state of the playing
   * music effect
   * @returns {Int} 1 if played 0 if not played.
   */
  public function playMusicEffect(currentState: Dynamic): Int; // TODO: Change currentState from Dynamic

}
