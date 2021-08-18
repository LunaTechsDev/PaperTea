package pm;

/** @class
 *  The main class which sets up data and begins the main game loop.
 */
@:js.import('../../System/main.js')
extern class Main {
  public static var loaded: Bool;
  public function new(): Void;
  public static function initialize(): Void;
  public static function load(): Void;
  public static function onEndLoading(): Void;
  public static function loop(): Void;
}
