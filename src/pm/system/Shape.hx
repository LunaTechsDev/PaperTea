package pm.system;

import pm.core.Enums.CustomShapeKind;

/** @class
 *  A shape of the game.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  shape
 *  @param {CustomShapeKind} [kind=CustomShapeKin] - The kind of custom shape
 */
@:native('Shape')
@:js.import('../../System/System/Shape.js')
extern class Shape extends Base {
  function new(?json: {}, ?kind: CustomShapeKind);
  var id: Float;
  var kind: CustomShapeKind;
  var name: String;
  var isBR: Bool;
  var dlc: String;
  var base64: String;
  var geometry: {};

  /**
    Assign the default members.
  **/
  function setup(args: Array<Dynamic>): Void;

  /**
    Load the .obj.
  **/
  function load(): js.lib.Promise<Void>;

  /**
    Get the absolute path associated to this picture.
  **/
  function getPath(): String;

  static var prototype: Shape;
  static var loader: Dynamic;

  /**
    Get string of custom shape kind.
  **/
  static function customShapeKindToString(kind: CustomShapeKind): String;

  /**
    Parse the .obj text.
  **/
  static function parse(text: String): {};

  /**
    Get the folder associated to a kind of custom shape.
  **/
  static function getFolder(kind: CustomShapeKind, isBR: Bool, dlc: String): String;

  /**
    Get the local folder associated to a kind of custom shape.
  **/
  static function getLocalFolder(kind: CustomShapeKind): String;
}
