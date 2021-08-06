package pm.eventcommand;

/** @class
 *  An event command for a comment (ignored).
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('Comment')
@:js.import('../../System/EventCommand/Comment.js')
extern class Comment extends Base {
  function new(command: Array<Dynamic>);
  static var prototype: Comment;
}
