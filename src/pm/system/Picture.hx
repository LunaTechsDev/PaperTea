package pm.system;

import pm.core.Enums.PictureKind;
import pm.core.Picture2D;
import pm.core.CollisionSquare;

@:native('Picture')
extern class Picture extends Base {
  function new(?json: {}, ?kind: PictureKind);
  var id: Float;
  var kind: PictureKind;
  var name: String;
  var isBR: Bool;
  var dlc: String;
  var base64: String;
  var jsonCollisions: Array<{}>;
  var collisionsRepeat: Bool;
  var collisions: Array<CollisionSquare>;
  var picture: Picture2D;
  var width: Float;
  var height: Float;
  var isStopAnimation: Bool;

  /**
    Assign the default members.
  **/
  function setup(args: Array<Dynamic>): Void;

  /**
    Read the JSON associated to the picture.
  **/
  function load(): js.lib.Promise<Void>;

  /**
    Get the number of rows for the picture (used for characters).
  **/
  function getRows(): Float;

  /**
    Get the absolute path associated to this picture.
  **/
  function getPath(): String;

  /**
    Read collisions according to image size.
  **/
  function readCollisionsImage(image: js.html.ImageElement): Void;

  /**
    Read collisions, we assume that this.width and this.height had been
    edited.
  **/
  function readCollisions(): Void;

  /**
    Get a specific collision square according to texture.
  **/
  function getCollisionAt(pos: Array<Float>): CollisionSquare;

  /**
    Get a specific collision square according to texture.
  **/
  function getCollisionAtPos(x: Float, y: Float): CollisionSquare;

  /**
    Get a specific collision square according to index.
  **/
  function getCollisionAtIndex(index: Float): CollisionSquare;

  /**
    Get a specific collision for wall.
  **/
  function getSquaresForWall(texture: Array<Float>): Array<Array<Float>>;

  /**
    Get a specific collision square according to texture.
  **/
  function getSquaresForTexture(texture: Array<Float>): Array<Array<Float>>;

  /**
    Get a specific collision square according to texture
  **/
  function getSquaresForStates(image: Dynamic): Array<Array<Float>>;

  static var prototype: Picture;

  /**
    Get string of picture kind.
  **/
  static function pictureKindToString(kind: PictureKind): String;

  /**
    Get the folder associated to a kind of picture.
  **/
  static function getFolder(kind: PictureKind, isBR: Bool, dlc: String): String;

  /**
    Get the local folder associated to a kind of picture.
  **/
  static function getLocalFolder(kind: PictureKind): String;
}
