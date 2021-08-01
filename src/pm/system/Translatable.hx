package pm.system;

import haxe.DynamicAccess;

@:native('Translatable')
@:js.import('../../System/System/Translatable.js')
extern class Translatable extends Base {
  public function new(?json: DynamicAccess<Dynamic>);

  /**
   * Assign the default members
   */
  override public function setup(): Void;

  public var names: Array<String>;

  public function name(): String;

  public function getCommand(command: Array<String>, iterator: StructIterator): Void;
}
