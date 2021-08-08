package pm.graphic;

@:jsRequire("./Content/Datas/Scripts/System/Graphic/index", "Message") extern class Message {
  function new(message: String, facesetID: Float);
  var message: String;
  var faceset: content.datas.scripts.system.core.index.Picture2D;
  var graphics: Array<content.datas.scripts.system.core.index.Bitmap>;
  var positions: Array<Float>;
  var tree: content.datas.scripts.system.core.tree.Tree;
  var heights: Array<Float>;
  var aligns: Array<content.datas.scripts.system.common.enum.enum.Align>;
  var totalWidths: Array<Float>;

  /**
    Set message (parse).
  **/
  function setMessage(message: String): Void;

  /**
    Update tag.
  **/
  function updateTag(currentNode: content.datas.scripts.system.core.node.Node,
    tag: content.datas.scripts.system.common.enum.enum.TagKind, value: String, open: Bool,
    notClosed: Array<content.datas.scripts.system.core.node.Node>): content.datas.scripts.system.core.node.Node;

  /**
    Update all.
  **/
  function update(): Void;

  /**
    Update the nodes.
  **/
  function updateNodes(node: content.datas.scripts.system.core.node.Node, result: {}): Void;

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
