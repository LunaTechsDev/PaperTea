package pm.core;

/** @class
 *   Datas structure of tree
 *   @property {Object} data Data of the node
 *   @property {Node} parent Parent of the node
 *   @property {Node} firstChild The first child of the node
 *   @property {Node} lastChild The last child of the node
 *   @property {Node} next The next parent child
 */
@:native('Node')
@:js.import('../../System/Core/Node.js')
extern class Node {
  public var parent: Node;
  public var firstChild: Node;
  public var lastChild: Node;
  public var next: Node;
  public function new(parent: Node, data: Any): Void;

  /** Add a new child
   *   @param {Object} data Data of the new child
   *   @returns {Node} The new child
   */
  public function add(data: Any): Node;

  /** Check if this node is the root of the tree
   *   @returns {Bool}
   */
  public function isRoot(): Bool;

  /** Get the next parent child
   *   @returns {Node}
   */
  public function getNext(): Node;
}
