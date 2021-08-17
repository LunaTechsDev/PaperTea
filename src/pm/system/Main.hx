package pm.system;

/** @class
 *  The main class which sets up data and begins the main game loop.
 */
@:native('Main') ;
@:js.import('../../System/Main.js') ;
extern class Main {
  public static loaded: Bool;
  function new();
  public static function initialize(): Void;
  public static function load(): Void;
  public static function onEndLoading(): Void;
  public static function loop(): Void;
}
