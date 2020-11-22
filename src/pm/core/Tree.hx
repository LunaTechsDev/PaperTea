package pm.core;

/** @class
 *   Datas structure of tree
 *   @property {Node} root Node representing the root of the tree
 *   @param {Object} data The data
 */
extern class Tree {
  public var root: Node;
  public function new(data: Any): Void;

  public function add(data: Any): Void;
}
