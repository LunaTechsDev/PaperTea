package pm.graphic;

import pm.core.Enums.Align;
import pm.core.Tree;
import pm.core.Picture2D;
import pm.core.Bitmap;
import pm.core.Enums.TagKind;
import pm.core.Node;

/** @class
 *  A class for message show text command.
 *  @extends Graphic.Base
 *  @param {string} message - The complete text to parse
 *  @param {number} facesetID - The faceset picture ID
 */
@:native('Message')
@:js.import('../../System/Graphic/Message.js')
extern class Message {
  function new(message: String, facesetID: Float);
  var message: String;
  var faceset: Picture2D;
  var graphics: Array<Bitmap>;
  var positions: Array<Float>;
  var tree: Tree;
  var heights: Array<Float>;
  var aligns: Array<Align>;
  var totalWidths: Array<Float>;

  /**
    Set message (parse).
  **/
  function setMessage(message: String): Void;

  /**
    Update tag.
  **/
  function updateTag(currentNode: Node, tag: TagKind, value: String, open: Bool, notClosed: Array<Node>): Node;

  /**
    Update all.
  **/
  function update(): Void;

  /**
    Update the nodes.
  **/
  function updateNodes(node: Node, result: {}): Void;

  /**
    Drawing the faceset behind.
  **/
  function drawBehind(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the faceset.
  **/
  function drawFaceset(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the message box.
  **/
  function drawChoice(?x: Float, ?y: Float, ?w: Float, ?h: Float, ?positionResize: Bool): Void;

  /**
    Drawing the message.
  **/
  function draw(?x: Float, ?y: Float, ?w: Float, ?h: Float, ?positionResize: Bool): Void;

  static var prototype: Message;
  static final TAG_BOLD: String;
  static final TAG_ITALIC: String;
  static final TAG_LEFT: String;
  static final TAG_CENTER: String;
  static final TAG_RIGHT: String;
  static final TAG_SIZE: String;
  static final TAG_FONT: String;
  static final TAG_TEXT_COLOR: String;
  static final TAG_BACK_COLOR: String;
  static final TAG_STROKE_COLOR: String;
  static final TAG_VARIABLE: String;
  static final TAG_PARAMETER: String;
  static final TAG_PROPERTY: String;
  static final TAG_HERO_NAME: String;
  static final TAG_ICON: String;
}
