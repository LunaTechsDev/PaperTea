package pm.system;

import pm.core.Types.LangJSON;

/**
 * A name that can have several translations
 * @property {Object} [Lang.EMPTY_NAMES={names:["",""]}] The default json for no names
 * @property {string[]} [names=[]] The different names list according to lang ID
 * @param {LangJSON} [json=undefined] Json object describing the name in sevaral
 * langs
 */
// extends SystemStructure
extern class Lang extends BaseSystem {
  public static var EMPTY_NAMES: Array<String>;
  public function new(?json: LangJSON): Void;

  /** 
   * Read the JSON associated to the name in sevaral langs
   * @param {LangJSON} json Json object describing the name in sevaral langs
   */
  public function read(?json: LangJSON): Void;

  /** 
   * Get the name according to current lang
   * @returns {String}
   */
  public function name(): String;

  public function getCommand(command: Any, iterator: Any): Void;
}
