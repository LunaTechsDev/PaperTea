package pm.system;

@:native('Video')
@:js.import('../../System/System/Video.js')
extern class Video extends Base {
  function new(?json: {}); // Record<String,any>
  var id: Float;
  var name: String;
  var isBR: Bool;
  var dlc: String;

  /**
    Get the absolute path associated to this video.
  **/
  function getPath(): String;

  static var prototype: Video;

  /**
    Get the folder associated to videos.
  **/
  static function getFolder(isBR: Bool, dlc: String): String;

  /**
    Get the local folder associated to videos.
  **/
  static function getLocalFolder(): String;
}
