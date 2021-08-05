package pm.manager;

import pm.core.Enums.SongKind;

/** @class
 *  The manager for songs.
 *  @static
 */
@:native('Songs')
@:js.import('../../System/Manager/Songs.js')
extern class Songs {
  function new();
  static var prototype: Songs;
  static var musicEffectStep: Float;
  static var isProgressionMusicEnd: Bool;
  static var isMusicNone: Bool;
  static var volumes: Array<Float>;
  static var starts: Array<Float>;
  static var ends: Array<Float>;
  static var current: Array<Dynamic>;
  static var progressionMusic: Dynamic;
  static var progressionMusicTime: Float;
  static var progressionMusicEnd: Float;
  static var currentStateMusicEffect: {}; // Record<String, any>

  /**
    Initialize all the lists according to SongKind.
  **/
  static function initialize(): Void;

  /**
    Play a music.
  **/
  static function playMusic(kind: SongKind, id: Float, volume: Float, start: Float, end: Float): Void;

  /**
    Stop a song.
  **/
  static function stopSong(kind: SongKind, time: Float, seconds: Float, ?pause: Bool): Bool;

  /**
    Unpause a song.
  **/
  static function unpauseSong(kind: SongKind, time: Float, seconds: Float): Bool;

  /**
    Play a sound.
  **/
  static function playSound(id: Float, volume: Float): Void;

  /**
    Play a music effect.
  **/
  static function playMusicEffect(id: Float, volume: Float, currentState: {}): Bool;

  /**
    Update songs positions or other stuff.
  **/
  static function updateByKind(kind: SongKind): Void;

  /**
    Update songs positions or other stuffs.
  **/
  static function update(): Void;

  /**
    Stop the music (with progression).
  **/
  static function stopMusic(time: Float): Void;

  /**
    Initialize progression music (for stop).
  **/
  static function initializeProgressionMusic(i: Float, f: Float, equation: Float, end: Float): Void;

  /**
    Update the progression music
  **/
  static function updateProgressionMusic(): Void;

  /**
    Stop all the songs
  **/
  static function stopAll(): Void;
}
