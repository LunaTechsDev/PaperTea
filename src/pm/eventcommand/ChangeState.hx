package pm.eventcommand;

import pm.system.MapObject;
import pm.system.DynamicValue;

@:native('ChangeState')
extern class ChangeState extends Base {
  function new(command: Array<Dynamic>);
  var mapID: DynamicValue;
  var objectID: DynamicValue;
  var idState: DynamicValue;
  var operationKind: Float;

  /**
    Initialize the current state.
  **/
  function initialize(): {};

  /**
    Update and check if the event is finished.
  **/
  function update(currentState: {}, object: MapObject, state: Float): Float;

  static var prototype: ChangeState;

  /**
    Add a state to an object.
  **/
  static function addState(portionDatas: {}, index: Float, state: Float): Void;

  /**
    Remove a state from an object.
  **/
  static function removeState(portionDatas: {}, index: Float, state: Float): Void;

  /**
    Remove all the states from an object.
  **/
  static function removeAll(portionDatas: {}, index: Float): Void;

  /**
    Remove states from datas.
  **/
  static function removeFromDatas(portionDatas: {}, index: Float, states: Array<Float>): Void;

  /**
    Add state in ID's list.
  **/
  static function addStateSpecial(states: Array<Float>, state: Float): Void;

  /**
    Remove state in ID's list.
  **/
  static function removeStateSpecial(states: Array<Float>, state: Float): Void;
}
