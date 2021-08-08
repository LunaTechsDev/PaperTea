package pm.graphic;

/** @class
 *  The graphic displaying all the progression for each character.
 *  @extends Graphic.Base
 */
@:native('XXProgression')
@:js.import('../../System/Graphic/XPProgression.js')
extern class XPProgression extends Base {
  function new();
  var graphicCharacters: Array<Player>;

  /**
    Update graphics experience.
  **/
  function updateExperience(): Void;

  /**
    Drawing the progression.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the progression.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: XPProgression;
}
