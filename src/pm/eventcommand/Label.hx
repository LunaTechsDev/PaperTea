package pm.eventcommand;

/** @class
 *  An event command for label.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('Label')
@:js.import('../../System/EventCommand/Label.js')
extern class Label extends Base {
  function new(command: Array<Dynamic>);
  var name: Dynamic;
  static var prototype: Label;
}
