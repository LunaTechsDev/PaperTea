package pm.datas;

import pm.system.Video;

/**
 * @class
 * All the video data.
 * @static
 */
@:native('Videos')
@:js.import('../../System/Datas/Videos.js')
extern class Videos {
  function new();
  static var prototype: Videos;
  private static var list: Array<Video>;

  /**
    Read the JSON file associated to videos
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the corresponding video.
  **/
  static function get(id: Float): Dynamic;
}
