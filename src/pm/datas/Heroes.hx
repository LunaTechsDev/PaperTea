package pm.datas;

@:native('Heroes')
@:js.import('../../System/Datas/Heroes.js')
extern class Heroes {
  function new();
  static var prototype: Heroes;
  private static var list: Array<pm.system.Hero>;

  /**
    Read the JSON file associated to heroes.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the hero by ID.
  **/
  static function get(id: Float): Dynamic;
}
