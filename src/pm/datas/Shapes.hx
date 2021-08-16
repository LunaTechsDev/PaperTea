package pm.datas;

@:native('Shapes')
@:js.import('../../System/Datas/Shapes.js')
extern class Shapes {
  function new();
  static var prototype: Shapes;
  private static var list: Array<pm.system.Shape>;

  /**
    Read the JSON file associated to shapes.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the corresponding shape
  **/
  static function get(kind: pm.core.Enums.CustomShapeKind, id: Float): Dynamic;
}
