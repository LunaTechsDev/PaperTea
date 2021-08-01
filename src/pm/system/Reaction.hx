package pm.system;

import pm.core.Tree;
import pm.core.Node;

@:native('Reaction')
@:js.import('../../System/System/Reaction.js')
extern class Reaction extends Base {
  function new(?json: {});
  var labels: Array<ts.Tuple2<Dynamic, Node>>;
  var idEvent: Float;
  var blockingHero: Bool;
  var commands: Tree;

  /**
    Read the JSON children associated to the object reaction.
  **/
  function readChildrenJSON(jsonCommands: {}, commands: Node): Void;

  /**
    Get the first node command of the reaction.
  **/
  function getFirstCommand(): Node;

  static var prototype: Reaction;
}
