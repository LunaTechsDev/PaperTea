package pm.datas;

/** @class
 *  All the status datas.
 *  @static
 */
@:native('Status')
@:js.import('../../System/Datas/Status.js')
extern class Status {
  function new();
  static var prototype: Status;
  private static var list: Array<pm.system.Status>;

  /**
    Read the JSON file associated to status.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the status by ID.
  **/
  static function get(id: Float): Dynamic;
}
