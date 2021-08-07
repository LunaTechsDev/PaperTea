package pm.eventcommand;

;
@:jsRequire("./Content/Datas/Scripts/System/EventCommand/index",
  "SetDialogBoxOptions") extern class SetDialogBoxOptions extends Base {
  function new(command: Array<Dynamic>);
  var windowSkinID: Dynamic;
  var x: Dynamic;
  var y: Dynamic;
  var w: Dynamic;
  var h: Dynamic;
  var pLeft: Dynamic;
  var pTop: Dynamic;
  var pRight: Dynamic;
  var pBottom: Dynamic;
  var fPosAbove: Bool;
  var fX: Dynamic;
  var fY: Dynamic;
  var tOutline: Bool;
  var tcText: Dynamic;
  var tcOutline: Dynamic;
  var tcBackground: Dynamic;
  var tSize: Dynamic;
  var tFont: Dynamic;
  var v_windowSkin: Dynamic;
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
  var v_tcText: Dynamic;
  var v_tcOutline: Dynamic;
  var v_tcBackground: Dynamic;
  var v_tSize: Float;
  var v_tFont: String;
  static var prototype: SetDialogBoxOptions;
}
