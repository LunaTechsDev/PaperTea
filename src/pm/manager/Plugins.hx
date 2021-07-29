package pm.manager;

@:jsRequire("./Content/Datas/Scripts/System/Manager/Plugins", "Plugins") extern class Plugins {
  function new();
  static var prototype: Plugins;
  static var plugins: {};
  static var pluginsNames: Array<String>;

  /**
    Load all the game plugins.
  **/
  static function load(): js.lib.Promise<Void>;

  /**
    Load a particular plugin.
  **/
  static function loadPlugin(pluginJSON: {}): js.lib.Promise<Bool>;

  /**
    Register plugin parameters.
  **/
  static function register(plugin: Dynamic): Void;

  /**
    Register a plugin command.
  **/
  static function registerCommand(pluginName: String, commandName: String, command: haxe.Constraints.Function): Void;

  /**
    Execute a plugin command.
  **/
  static function executeCommand(pluginID: Float, commandID: Float, args: Array<Dynamic>): Void;

  /**
    Return the plugin object.
  **/
  static function fetch(pluginName: String): Dynamic;

  /**
    Check whether the plugin exist or not. It's used for compatbilities
    purpose.
  **/
  static function exists(pluginName: String): Bool;

  /**
    Get plugin parameters.
  **/
  static function getParameters(pluginName: String): Dynamic;

  /**
    Get a plugin parameter.
  **/
  static function getParameter(pluginName: String, parameter: String): Dynamic;

  /**
    Check whether or not the plugin is enabled or not.
  **/
  static function isEnabled(pluginName: String): Bool;

  /**
    Merge the two plugins to extends their plugins data.
  **/
  static function merge(parent: String, child: String): Void;

  static function inject<T, M, LT, TR, LM>(classObject: T, prototypeName: ts.AnyOf3<M, LT, TR>,
    prototype: ts.AnyOf2<LM, Dynamic>, ?staticType: Bool, ?overwrite: Bool, ?loadBefore: Bool): Void;
}
