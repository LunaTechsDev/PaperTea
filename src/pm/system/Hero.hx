package pm.system;

import pm.core.Skill;

@:native('Hero')
extern class Hero extends Translatable {
  function new(json: {});
  @:native("class")
  var class_: Dynamic;
  var idBattler: Float;
  var idFaceset: Float;
  var classInherit: Class;

  /**
    Check if this hero is a monster.
  **/
  function isMonster(): Bool;

  /**
    Get the property according to class inherit and this hero.
  **/
  function getProperty(prop: String, changedClass: Dynamic): Dynamic;

  /**
    Get the experience table according to class inherit and this hero.
  **/
  function getExperienceTable(changedClass: Dynamic): {};

  /**
    Get the characteristics according to class inherit and this hero.
  **/
  function getCharacteristics(changedClass: Dynamic): Array<Dynamic>;

  /**
    Get the statistics progression according to class inherit and this hero.
  **/
  function getStatisticsProgression(changedClass: Dynamic): Array<StatisticProgression>;

  /**
    Get the skills according to class inherit and this hero.
  **/
  function getSkills(level: Float, changedClass: Dynamic): Array<Skill>;

  /**
    Get the learned skill at a specific level according to class inherit and
    this hero.
  **/
  function getLearnedSkills(level: Float, changedClass: Dynamic): Array<Skill>;

  /**
    Create the experience list according to base and inflation.
  **/
  function createExpList(changedClass: Dynamic): Array<Float>;

  static var prototype: Hero;
}
