package pm.datas;

/** @class
 *   All the animation data.
 *   @static
 */
@:native('Animations')
@:js.import('../../System/Datas/Animations.js')
extern class Animations {
  function new();
  static var prototype: Animations;
  private static var list: Array<pm.system.Animation>;

  /**
    Read the JSON file associated to status.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the animation by ID.
  **/
  static function get(id: Float): Dynamic;
}
