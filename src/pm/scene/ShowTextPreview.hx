package pm.scene;

import pm.eventcommand.ShowText;

/**
  Scene used for showing text preview
**/
@:native('ShowTextPreview')
@:js.import('../../System/Scene/ShowTextPreview.js')
extern class ShowTextPreview extends Base {
  function new();
  var eventCommand: ShowText;
  var currentState: {};
  var isLoading: Bool;
  var needRedraw: Bool;
  function updateCommand(): js.lib.Promise<Void>;
  static var prototype: ShowTextPreview;
}
