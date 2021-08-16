package pm.datas;

/**
 * @class
 * All the skill data.
 * @static
 */
@:native('Skills')
@:js.import('../../System/Datas/Skills.js')
extern class Skills {
  function new();
  static var prototype: Skills;
  private static var list: Array<pm.system.Skill>;

  /**
    Read the JSON file associated to skills.
  **/
  static function read(): js.lib.Promise<Void>;

  /**
    Get the skill by ID.
  **/
  static function get(id: Float): Dynamic;
}
