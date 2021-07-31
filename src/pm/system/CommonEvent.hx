package pm.system;

@:native('CommonEvent')
extern class CommonEvent extends Base {
  function new(?json: {});
  var parameters: Array<Parameter>;
  static var prototype: CommonEvent;
}
