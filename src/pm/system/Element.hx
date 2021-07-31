package pm.system;

@:native('Element')
extern class Element extends Icon {
  function new(?json: {});
  var efficiency: Array<DynamicValue>;

  /**
    Read the JSON associated to the element
  **/
  function read(json: {}): Void;

  static var prototype: Element;
}
