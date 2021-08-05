package pm.system;

import pm.core.Picture2D;

/** @class
 *  A window skin of the game.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  window skin
 */
@:native('WindowSkin')
@:js.import('../../System/System/WindowSkin.js')
extern class WindowSkin {
  function new(?json: {});
  var pictureID: Float;
  var borderTopLeft: Array<Float>;
  var borderTopRight: Array<Float>;
  var borderBotLeft: Array<Float>;
  var borderBotRight: Array<Float>;
  var borderLeft: Array<Float>;
  var borderRight: Array<Float>;
  var borderTop: Array<Float>;
  var borderBot: Array<Float>;
  var background: Array<Float>;
  var backgroundSelection: Array<Float>;
  var backgroundRepeat: Array<Float>;
  var arrowEndMessage: Array<Float>;
  var arrowTargetSelection: Array<Float>;
  var arrowUpDown: Array<Float>;
  var textNormal: Array<Float>;
  var textCritical: Array<Float>;
  var textHeal: Array<Float>;
  var textMiss: Array<Float>;
  var picture: Picture2D;

  /**
    Read the JSON associated to the window skin.
  **/
  function read(json: {}): Void;

  /**
    Update the window skin picture ID.
  **/
  function updatePicture(): js.lib.Promise<Void>;

  /**
    Draw any element of the window skin box with the cut picture.
  **/
  function drawElement(r: Array<Float>, x: Float, y: Float, ?w: Float, ?h: Float, ?zoom: Float,
    ?positionResize: Bool): Void;

  /**
    Draw the background box.
  **/
  function drawBoxBackground(background: Array<Float>, rect: Array<Float>): Void;

  /**
    Draw the box
  **/
  function drawBox(rect: Array<Float>, selected: Bool, bordersVisible: Bool): Void;

  /**
    Draw the arrow for targets.
  **/
  function drawArrowTarget(frame: Float, x: Float, y: Float, ?positionResize: Bool): Void;

  /**
    Draw the arrow for end of messages.
  **/
  function drawArrowMessage(frame: Float, x: Float, y: Float): Void;

  /**
    Draw the arrow up for spinbox.
  **/
  function drawArrowUp(x: Float, y: Float): Void;

  /**
    Draw the arrow up for spinbox.
  **/
  function drawArrowDown(x: Float, y: Float): Void;

  /**
    Draw a damage number.
  **/
  function drawDamagesNumber(damage: Float, x: Float, y: Float, rect: Array<Float>, zoom: Float): Void;

  /**
    Draw a damage number according to the kind of damages.
  **/
  function drawDamages(damage: Float, x: Float, y: Float, isCrit: Bool, isMiss: Bool, zoom: Float): Void;

  static var prototype: WindowSkin;
}
