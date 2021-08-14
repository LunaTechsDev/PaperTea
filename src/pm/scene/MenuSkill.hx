package pm.scene;

/**
 * Scene for the skill menu.
 */
@:native('MenuSkills')
@:js.import('../../System/Scene/MenuSkills.js')
extern class MenuSkills extends Base {
  function new();
  var positionChoice: Array<pm.core.Types.StructPositionChoice>;
  var windowTop: pm.core.WindowBox;
  var windowChoicesTabs: pm.core.WindowChoices;
  var windowChoicesList: pm.core.WindowChoices;
  var windowBoxInformation: pm.core.WindowBox;
  var windowEmpty: pm.core.WindowBox;
  var windowBoxUseSkill: pm.core.WindowBox;
  var substep: Float;

  /**
    Create the choice list.
  **/
  function createWindowChoicesList(): Void;

  /**
    Create the information window.
  **/
  function createWindowBoxInformation(): Void;

  /**
    Synchronize informations with selected hero.
  **/
  function synchronize(): Void;

  /**
    Update tab
  **/
  function updateForTab(): Void;

  /**
    Move tab according to key.
  **/
  function moveTabKey(key: Float): Void;

  static var prototype: MenuSkills;
}
