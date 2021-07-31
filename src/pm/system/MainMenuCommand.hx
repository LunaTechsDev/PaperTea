package pm.system;

import pm.core.Enums.MainMenuCommandKind;

extern class MainMenuCommand extends Translatable {
  function new(?json: {});
  var kind: MainMenuCommandKind;
  var script: String;

  /**
    Get the callbacks functions when clicking on command.
  **/
  function getCallback(): () -> Bool;
    static var prototype: MainMenuCommand;
}
