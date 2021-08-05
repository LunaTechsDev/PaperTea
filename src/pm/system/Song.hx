package pm.system;

import pm.core.Enums.SongKind;

/** @class
 *  A song of the game.
 *  @extends System.Base
 *  @param {Record<string ,any>} - [json=undefined] Json object describing the 
 *  song
 *  @param {SongKind} [kind=SongKind.Music] - The kind of song
 */
@:native('Song')
@:js.import('../../System/System/Song.js')
extern class Song extends Base {
  function new(?json: {}, ?kind: SongKind);
  var id: Float;
  var kind: SongKind;
  var name: String;
  var isBR: Bool;
  var dlc: String;
  var base64: String;
  var howl: Dynamic;

  /**
    Assign the default members.
  **/
  function setup(args: Array<Dynamic>): Void;

  /**
    Get the absolute path associated to this song.
  **/
  function getPath(): String;

  /**
    Load the song.
  **/
  function load(): Void;

  static var prototype: Song;

  /**
    Get string of song kind.
  **/
  static function songKindToString(kind: SongKind): String;

  /**
    Get the folder associated to a kind of song.
  **/
  static function getFolder(kind: SongKind, isBR: Bool, dlc: String): String;

  /**
    Get the local folder associated to a kind of song.
  **/
  static function getLocalFolder(kind: SongKind): String;
}
