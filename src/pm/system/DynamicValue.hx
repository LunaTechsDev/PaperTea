package pm.system;

import pm.core.Types;
import pm.core.Enums.DynamicValueKind;

@:native('DynamicValue')
@:js.import('../../System/System/DynamicValue.js')
extern class DynamicValue {
  function new(?json: {});
  var kind: DynamicValueKind;
  var value: Dynamic;
  var customStructure: {};
  var customList: Array<Dynamic>;
  var x: Dynamic;
  var y: Dynamic;
  var z: Dynamic;

  /**
    Read the JSON associated to the value
  **/
  function read(json: StructJSON): Void;

  /**
    Get the json value.
  **/
  function toJson(): {};

  /**
    Get the value
  **/
  function getValue<T>(?forceVariable: Bool): Dynamic;

  /**
    Check if a value is equal to another one
  **/
  function isEqual(value: Dynamic): Bool;

  static var prototype: DynamicValue;

  /**
    Create a new value from kind and value.
  **/
  static function create(?k: DynamicValueKind, ?v: Dynamic): Dynamic;

  /**
    Create a new value from a command and iterator.
  **/
  static function createValueCommand(command: Array<Dynamic>, iterator: StructIterator): Dynamic;

  /**
    Create a none value.
  **/
  static function createNone(): DynamicValue;

  /**
    Create a new value number.
  **/
  static function createNumber(n: Float): DynamicValue;

  /**
    Create a new value message.
  **/
  static function createMessage(m: String): DynamicValue;

  /**
    Create a new value decimal number.
  **/
  static function createNumberDouble(n: Float): DynamicValue;

  /**
    Create a new value keyBoard.
  **/
  static function createKeyBoard(k: Float): DynamicValue;

  /**
    Create a new value switch.
  **/
  static function createSwitch(b: Bool): DynamicValue;

  /**
    Create a new value variable.
  **/
  static function createVariable(id: Float): DynamicValue;

  /**
    Create a new value parameter.
  **/
  static function createParameter(id: Float): DynamicValue;

  /**
    Create a new value property.
  **/
  static function createProperty(id: Float): DynamicValue;

  /**
    Map a list of parameters so it gets the current properties and
    parameters values.
  **/
  static function mapWithParametersProperties(parameters: Array<DynamicValue>): Array<DynamicValue>;

  /**
    Try to read a variable value, if not possible put default value.
  **/
  static function readOrDefaultVariable(json: StructJSON): DynamicValue;

  /**
    Try to read a number value, if not possible put default value.
  **/
  static function readOrDefaultNumber(json: StructJSON, ?n: Float): DynamicValue;

  /**
    Try to read a double number value, if not possible put default value.
  **/
  static function readOrDefaultNumberDouble(json: StructJSON, ?n: Float): DynamicValue;

  /**
    Try to read a database value, if not possible put default value.
  **/
  static function readOrDefaultDatabase(json: StructJSON, ?id: Float): DynamicValue;

  /**
    Try to read a message value, if not possible put default value.
  **/
  static function readOrDefaultMessage(json: StructJSON, ?m: String): DynamicValue;

  /**
    Try to read a switch value, if not possible put default value.
  **/
  static function readOrDefaultSwitch(json: StructJSON, ?s: Bool): DynamicValue;

  /**
    Try to read a value, if not possible put none value.
  **/
  static function readOrNone(json: StructJSON): DynamicValue;

  /**
    Read a value of any kind and return it.
  **/
  static function readFromJSON(json: StructJSON): DynamicValue;
}
