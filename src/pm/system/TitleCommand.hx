package pm.system;

import pm.core.Enums.TitleCommandKind;

/** @class
 *  A title command of the game.
 *  @extends System.Translatable
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  title screen command
 */
@:native('TitleCommand')
@:js.import('../../System/System/TitleCommand.js')
extern class TitleCommand extends Translatable {
  function new(?json: {});
  var kind: TitleCommandKind;
  var script: String;

  /**
    Get the action function according to kind.
  **/
  function getAction(): haxe.Constraints.Function;

  /**
    Callback function for start a new game.
  **/
  function startNewGame(): Bool;

  /**
    Callback function for loading an existing game.
  **/
  function loadGame(): Bool;

  /**
    Callback function for loading an existing game.
  **/
  function showSettings(): Bool;

  /**
    Callback function for closing the window.
  **/
  function exit(): Bool;

  /**
    Callback function for closing the window.
  **/
  function executeScript(): Bool;

  static var prototype: TitleCommand;
}
