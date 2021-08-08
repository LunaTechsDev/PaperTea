package pm.graphic;

import pm.core.Bitmap;

/** 
 *  @class
 *  The abstract class who model the Structure of graphics (inside window boxes).
 */
@:native('Base')
@:js.import('../../System/Graphic/Base.js')
extern class Base extends Bitmap {
  function new();
  var datas: Dynamic; // Object Type

  /**
    Drawing the stuff behind the window box.
  **/
  function drawBehind(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Update the content.
  **/
  function update(): Void;

  /**
    Drawing the graphic.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float, ?positionResize: Bool): Void;

  /**
    Drawing the graphic in box.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float, ?positionResize: Bool): Void;

  static var prototype: Base;
}
