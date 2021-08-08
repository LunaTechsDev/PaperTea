package pm.eventcommand;

import pm.system.DynamicValue;
import pm.system.Color;
import pm.system.WindowSkin;

/** @class
 *  An event command for setting the dialog box options.
 *  @extends EventCommand.Base
 *  @param {any[]} command - Direct JSON command to parse
 */
@:native('SetDialogBoxOptions')
@:js.import('../../System/EventCommand/SetDialogBoxOptions.js')
extern class SetDialogBoxOptions extends Base {
  function new(command: Array<Dynamic>);
  var windowSkinID: DynamicValue;
  var x: DynamicValue;
  var y: DynamicValue;
  var w: DynamicValue;
  var h: DynamicValue;
  var pLeft: DynamicValue;
  var pTop: DynamicValue;
  var pRight: DynamicValue;
  var pBottom: DynamicValue;
  var fPosAbove: Bool;
  var fX: DynamicValue;
  var fY: DynamicValue;
  var tOutline: Bool;
  var tcText: DynamicValue;
  var tcOutline: DynamicValue;
  var tcBackground: DynamicValue;
  var tSize: DynamicValue;
  var tFont: DynamicValue;
  var v_windowSkin: WindowSkin;
  var v_x: Float;
  var v_y: Float;
  var v_w: Float;
  var v_h: Float;
  var v_pLeft: Float;
  var v_pTop: Float;
  var v_pRight: Float;
  var v_pBottom: Float;
  var v_fPosAbove: Bool;
  var v_fX: Float;
  var v_fY: Float;
  var v_tOutline: Bool;
  var v_tcText: Color;
  var v_tcOutline: Color;
  var v_tcBackground: Color;
  var v_tSize: Float;
  var v_tFont: String;
  static var prototype: SetDialogBoxOptions;
}
