package pm.system;

@:native('Plugin')
@:js.import('../../System/System/Plugin.js')
extern class Plugin extends Base {
  function new(id: Float, ?json: {});
  var id: Float;
  var name: String;
  var isOn: Bool;
  var author: String;
  var version: String;
  // TODO: Add type def for commands and parameters for the plugin
  var parameters: {}; // Record<String, System.DynamicValue>
  var commands: {}; ///Record<String, Function>
  var commandsNames: Array<String>;
  static var prototype: Plugin;
}
